# 新增的项目加在这里
PROJECTS := javascript \
go \
java \
c \
designmode \
algorithm \
database \
os \
middleware

define PROJECT
	git clone git@github.com:sunzhangshuai/my$1.git my$1
	- $(MAKE) -C my$1
endef

CLEAN_PROJECTS := $(addprefix clean,$(PROJECTS))

all: $(PROJECTS)



$(PROJECTS):
	$(call PROJECT,$@)

clean: $(CLEAN_PROJECTS)

$(CLEAN_PROJECTS):
	- rm -rf $(subst clean,my,$@)

.PHONY: all clean $(PROJECTS) $(CLEAN_PROJECTS)
