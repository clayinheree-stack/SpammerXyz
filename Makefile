# =========================================================
# MAKEFILE - Xyz Tools (OBFUSCATED LOADER)
# =========================================================

# Warna untuk teks
RED   = \033[1;31m
GREEN = \033[1;32m
YELLOW= \033[1;33m
CYAN  = \033[1;36m
RESET = \033[0m

# =========================================================
# 1. DAFTAR DEPENDENSI
# =========================================================
REQUIRED_PKGS = curl wget git python python-pip figlet lolcat toilet mpv sox jq nmap w3m exiftool

# =========================================================
# 2. FUNGSI INSTALL (Dipanggil otomatis)
# =========================================================
define install_deps
	@echo "$(YELLOW)[+] Mengecek dependencies di Termux...$(RESET)"
	@for pkg in $(REQUIRED_PKGS); do \
		if ! command -v $$pkg >/dev/null 2>&1; then \
			echo "$(RED)[+] Menginstall $$pkg...$(RESET)"; \
			pkg install -y $$pkg; \
		fi \
	done
	@echo "$(GREEN)[✓] Termux dependencies selesai!$(RESET)"
	@echo "$(YELLOW)[+] Mengecek Python modules...$(RESET)"
	@pip install requests colorama pycryptodome bs4 >/dev/null 2>&1 || true
	@echo "$(GREEN)[✓] Python modules selesai!$(RESET)"
endef

# =========================================================
# 3. MAIN COMMAND
# =========================================================

run:
	@clear
	@echo "$(CYAN)"
	@echo " ███████╗██╗  ██╗██╗   ██╗"
	@echo " ╚══███╔╝╚██╗██╔╝╚██╗ ██╔╝"
	@echo "   ███╔╝  ╚███╔╝  ╚████╔╝ "
	@echo "  ███╔╝   ██╔██╗   ╚██╔╝  "
	@echo " ███████╗██╔╝ ██╗   ██║   "
	@echo " ╚══════╝╚═╝  ╚═╝   ╚═╝   "
	@echo "$(RESET)"
	@echo "$(YELLOW)═══════════════════════════════════════════$(RESET)"
	@echo "$(GREEN)  Xyz Tools v2.2 - System Loader$(RESET)"
	@echo "$(YELLOW)═══════════════════════════════════════════$(RESET)"
	$(call install_deps)
	@echo "$(GREEN)[+] SYSTEM READY. EXECUTING ENCODED SCRIPT...$(RESET)"
	@sleep 1
	@bash Xyz.sh
