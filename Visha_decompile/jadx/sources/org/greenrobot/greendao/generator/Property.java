package org.greenrobot.greendao.generator;

public class Property {
    private String codeBeforeField;
    private String codeBeforeGetter;
    private String codeBeforeSetter;
    private String constraints;
    private String converter;
    private String converterClassName;
    private String customType;
    private String customTypeClassName;
    private String dbName;
    private String dbType;
    private final Entity entity;
    private Index index;
    private String javaDocField;
    private String javaDocGetter;
    private String javaDocSetter;
    private String javaType;
    private boolean nonDefaultDbName;
    private boolean nonPrimitiveType;
    private boolean notNull;
    private int ordinal;
    private boolean pkAsc;
    private boolean pkAutoincrement;
    private boolean pkDesc;
    private boolean primaryKey;
    private final String propertyName;
    private PropertyType propertyType;
    private final Schema schema;
    private boolean unique;

    public static class PropertyBuilder {
        private final Property property;

        public PropertyBuilder(Schema schema, Entity entity, PropertyType propertyType, String str) {
            this.property = new Property(schema, entity, propertyType, str);
        }

        private String checkConvertToJavaDoc(String str) {
            return DaoUtil.checkConvertToJavaDoc(str, "    ");
        }

        public PropertyBuilder autoincrement() {
            if (!this.property.primaryKey || this.property.propertyType != PropertyType.Long) {
                throw new RuntimeException("AUTOINCREMENT is only available to primary key properties of type long/Long");
            }
            this.property.pkAutoincrement = true;
            return this;
        }

        public PropertyBuilder codeBeforeField(String str) {
            this.property.codeBeforeField = str;
            return this;
        }

        public PropertyBuilder codeBeforeGetter(String str) {
            this.property.codeBeforeGetter = str;
            return this;
        }

        public PropertyBuilder codeBeforeGetterAndSetter(String str) {
            this.property.codeBeforeGetter = str;
            this.property.codeBeforeSetter = str;
            return this;
        }

        public PropertyBuilder codeBeforeSetter(String str) {
            this.property.codeBeforeSetter = str;
            return this;
        }

        @Deprecated
        public PropertyBuilder columnName(String str) {
            return dbName(str);
        }

        @Deprecated
        public PropertyBuilder columnType(String str) {
            return dbType(str);
        }

        public PropertyBuilder customType(String str, String str2) {
            this.property.customType = str;
            this.property.customTypeClassName = DaoUtil.getClassnameFromFullyQualified(str);
            this.property.converter = str2;
            this.property.converterClassName = DaoUtil.getClassnameFromFullyQualified(str2);
            return this;
        }

        public PropertyBuilder dbName(String str) {
            this.property.dbName = str;
            this.property.nonDefaultDbName = str != null;
            return this;
        }

        public PropertyBuilder dbType(String str) {
            this.property.dbType = str;
            return this;
        }

        public Property getProperty() {
            return this.property;
        }

        public PropertyBuilder index() {
            Index index = new Index();
            index.addProperty(this.property);
            this.property.entity.addIndex(index);
            return this;
        }

        public PropertyBuilder indexAsc(String str, boolean z) {
            Index index = new Index();
            index.addPropertyAsc(this.property);
            if (z) {
                index.makeUnique();
            }
            index.setName(str);
            this.property.entity.addIndex(index);
            return this;
        }

        public PropertyBuilder indexDesc(String str, boolean z) {
            Index index = new Index();
            index.addPropertyDesc(this.property);
            if (z) {
                index.makeUnique();
            }
            index.setName(str);
            this.property.entity.addIndex(index);
            return this;
        }

        public PropertyBuilder javaDocField(String str) {
            this.property.javaDocField = checkConvertToJavaDoc(str);
            return this;
        }

        public PropertyBuilder javaDocGetter(String str) {
            this.property.javaDocGetter = checkConvertToJavaDoc(str);
            return this;
        }

        public PropertyBuilder javaDocGetterAndSetter(String str) {
            String strCheckConvertToJavaDoc = checkConvertToJavaDoc(str);
            this.property.javaDocGetter = strCheckConvertToJavaDoc;
            this.property.javaDocSetter = strCheckConvertToJavaDoc;
            return this;
        }

        public PropertyBuilder javaDocSetter(String str) {
            this.property.javaDocSetter = checkConvertToJavaDoc(str);
            return this;
        }

        public PropertyBuilder nonPrimitiveType() {
            if (!this.property.propertyType.isScalar()) {
                throw new RuntimeException("Type is already non-primitive");
            }
            this.property.nonPrimitiveType = true;
            return this;
        }

        public PropertyBuilder notNull() {
            this.property.notNull = true;
            return this;
        }

        public PropertyBuilder primaryKey() {
            this.property.primaryKey = true;
            return this;
        }

        public PropertyBuilder primaryKeyAsc() {
            this.property.primaryKey = true;
            this.property.pkAsc = true;
            return this;
        }

        public PropertyBuilder primaryKeyDesc() {
            this.property.primaryKey = true;
            this.property.pkDesc = true;
            return this;
        }

        public PropertyBuilder unique() {
            this.property.unique = true;
            return this;
        }
    }

    public Property(Schema schema, Entity entity, PropertyType propertyType, String str) {
        this.schema = schema;
        this.entity = entity;
        this.propertyName = str;
        this.propertyType = propertyType;
    }

    private void initConstraint() {
        StringBuilder sb = new StringBuilder();
        if (this.primaryKey) {
            sb.append("PRIMARY KEY");
            if (this.pkAsc) {
                sb.append(" ASC");
            }
            if (this.pkDesc) {
                sb.append(" DESC");
            }
            if (this.pkAutoincrement) {
                sb.append(" AUTOINCREMENT");
            }
        }
        if (this.notNull || (this.primaryKey && this.propertyType == PropertyType.String)) {
            sb.append(" NOT NULL");
        }
        if (this.unique) {
            sb.append(" UNIQUE");
        }
        String strTrim = sb.toString().trim();
        if (sb.length() > 0) {
            this.constraints = strTrim;
        }
    }

    public String getCodeBeforeField() {
        return this.codeBeforeField;
    }

    public String getCodeBeforeGetter() {
        return this.codeBeforeGetter;
    }

    public String getCodeBeforeSetter() {
        return this.codeBeforeSetter;
    }

    public String getConstraints() {
        return this.constraints;
    }

    public String getConverter() {
        return this.converter;
    }

    public String getConverterClassName() {
        return this.converterClassName;
    }

    public String getCustomType() {
        return this.customType;
    }

    public String getCustomTypeClassName() {
        return this.customTypeClassName;
    }

    public String getDatabaseValueExpression() {
        return getDatabaseValueExpression(this.propertyName);
    }

    public String getDatabaseValueExpressionNotNull() {
        return getDatabaseValueExpression("entity.get" + DaoUtil.capFirst(this.propertyName) + "()");
    }

    public String getDbName() {
        return this.dbName;
    }

    public String getDbType() {
        return this.dbType;
    }

    public Entity getEntity() {
        return this.entity;
    }

    public String getEntityValueExpression(String str) {
        StringBuilder sb = new StringBuilder();
        if (this.customType != null) {
            sb.append(this.propertyName);
            sb.append("Converter.convertToEntityProperty(");
        }
        PropertyType propertyType = this.propertyType;
        if (propertyType == PropertyType.Byte) {
            sb.append("(byte) ");
        } else if (propertyType == PropertyType.Date) {
            sb.append("new java.util.Date(");
        }
        sb.append(str);
        PropertyType propertyType2 = this.propertyType;
        if (propertyType2 == PropertyType.Boolean) {
            sb.append(" != 0");
        } else if (propertyType2 == PropertyType.Date) {
            sb.append(")");
        }
        if (this.customType != null) {
            sb.append(')');
        }
        return sb.toString();
    }

    public Index getIndex() {
        return this.index;
    }

    public String getJavaDocField() {
        return this.javaDocField;
    }

    public String getJavaDocGetter() {
        return this.javaDocGetter;
    }

    public String getJavaDocSetter() {
        return this.javaDocSetter;
    }

    public String getJavaType() {
        return this.javaType;
    }

    public String getJavaTypeInEntity() {
        String str = this.customTypeClassName;
        return str != null ? str : this.javaType;
    }

    public int getOrdinal() {
        return this.ordinal;
    }

    public String getPropertyName() {
        return this.propertyName;
    }

    public PropertyType getPropertyType() {
        return this.propertyType;
    }

    public void init2ndPass() {
        initConstraint();
        if (this.dbType == null) {
            this.dbType = this.schema.mapToDbType(this.propertyType);
        }
        String str = this.dbName;
        if (str == null) {
            this.dbName = DaoUtil.dbName(this.propertyName);
            this.nonDefaultDbName = false;
        } else if (this.primaryKey && this.propertyType == PropertyType.Long && str.equals("_id")) {
            this.nonDefaultDbName = false;
        }
        if (!this.notNull || this.nonPrimitiveType) {
            this.javaType = this.schema.mapToJavaTypeNullable(this.propertyType);
        } else {
            this.javaType = this.schema.mapToJavaTypeNotNull(this.propertyType);
        }
    }

    public void init3ndPass() {
    }

    public boolean isAutoincrement() {
        return this.pkAutoincrement;
    }

    public boolean isNonDefaultDbName() {
        return this.nonDefaultDbName;
    }

    public boolean isNonPrimitiveType() {
        return this.nonPrimitiveType || !this.propertyType.isScalar();
    }

    public boolean isNotNull() {
        return this.notNull;
    }

    public boolean isPkAsc() {
        return this.pkAsc;
    }

    public boolean isPkDesc() {
        return this.pkDesc;
    }

    public boolean isPrimaryKey() {
        return this.primaryKey;
    }

    public boolean isUnique() {
        return this.unique;
    }

    public void setIndex(Index index) {
        this.index = index;
    }

    public void setOrdinal(int i) {
        this.ordinal = i;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
    }

    public String toString() {
        return "Property " + this.propertyName + " of " + this.entity.getClassName();
    }

    public String getDatabaseValueExpression(String str) {
        StringBuilder sb = new StringBuilder();
        if (this.customType != null) {
            sb.append(this.propertyName);
            sb.append("Converter.convertToDatabaseValue(");
        }
        sb.append(str);
        if (this.customType != null) {
            sb.append(')');
        }
        PropertyType propertyType = this.propertyType;
        if (propertyType == PropertyType.Boolean) {
            sb.append(" ? 1L: 0L");
        } else if (propertyType == PropertyType.Date) {
            sb.append(".getTime()");
        }
        return sb.toString();
    }
}
