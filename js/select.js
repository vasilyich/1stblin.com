		// ������� ������� ������
		function cleanSelect (select) {
			// ������� �� ������
			return $(select).removeClass('icon-en').removeClass('icon-ru')
		}
		
		// ��������� select � ��� �����������
		function formSelect() {
			// �������� ���������� ������ � ��� ���������� ��������
            var select = cleanSelect('.flags');

			// ��������� �����, ������� ������������� ���������� ��������
            select.addClass(select.val() == '1' ? 'icon-en' : 'icon-ru');

			// ��������� �����, ����� � ������ �� ���� ����� ������ ���������
            select.css({ height: 'auto', overflow: 'hidden', zIndex: '40000' });

			// ���������� ���������� �� ������� ����� ����� � ������� ��������
            select.on('mouseleave', function () {
				// ������������� ������� ������
                this.size = 1;
				// ��������� ����� ����� � ������������ � ��������� ���������
                cleanSelect(this).addClass($(this).val() == '1' ? 'icon-en' : 'icon-ru');
            });

			// ���������� ���������� �� ������� ����� ����� � ������� ��������
            select.on('mouseover', function () {
				// ������� ����� ������, ����� �� �� ����� �����������
                cleanSelect(this);
				// ������������� ������, ������ ���������� ���������
                this.size = $(this).find('option').length;
            });
        }

		// ����� �������� DOM - �������� ������
		$(function () {
			formSelect();
		});
		
