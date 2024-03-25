document.addEventListener("DOMContentLoaded", function() {
    const input = document.getElementById('input-search');
    const listItems = document.querySelectorAll('.list-item');
    const zeroResults = document.getElementById('zero-results');

    input.addEventListener('input', function() {
        const searchTerm = input.value.trim().toLowerCase();

        if (searchTerm === '') {
            listItems.forEach(function(item) {
                item.classList.remove('hide');
            });
            zeroResults.classList.add('hide');
            return;
        }

        let found = false;
        listItems.forEach(function(item) {
            const title = item.querySelector('h2').textContent.trim().toLowerCase();
            const content = item.querySelector('p').textContent.trim().toLowerCase();

            const normalizedTitle = removeAccents(title);
            const normalizedContent = removeAccents(content);
            const normalizedSearchTerm = removeAccents(searchTerm);

            if (normalizedTitle.includes(normalizedSearchTerm) || normalizedContent.includes(normalizedSearchTerm)) {
                item.classList.remove('hide');
                found = true;
            } else {
                item.classList.add('hide');
            }
        });

        if (found) {
            zeroResults.textContent = '';
            zeroResults.classList.add('hide');
        } else {
            zeroResults.textContent = `Nenhuma ocorrência do termo "${input.value}"`;
            zeroResults.classList.remove('hide');
        }
    });

    function removeAccents(str) {
        return str.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    }
});