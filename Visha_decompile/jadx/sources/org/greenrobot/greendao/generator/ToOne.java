package org.greenrobot.greendao.generator;

public class ToOne {
    private final Property[] fkProperties;
    private String name;
    private final String[] resolvedKeyJavaType;
    private final boolean[] resolvedKeyUseEquals;
    private final Schema schema;
    private final Entity sourceEntity;
    private final Entity targetEntity;
    private final boolean useFkProperty;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$greenrobot$greendao$generator$PropertyType;

        static {
            int[] iArr = new int[PropertyType.values().length];
            $SwitchMap$org$greenrobot$greendao$generator$PropertyType = iArr;
            try {
                iArr[PropertyType.Byte.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$greenrobot$greendao$generator$PropertyType[PropertyType.Short.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$greenrobot$greendao$generator$PropertyType[PropertyType.Int.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$greenrobot$greendao$generator$PropertyType[PropertyType.Long.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$greenrobot$greendao$generator$PropertyType[PropertyType.Boolean.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$greenrobot$greendao$generator$PropertyType[PropertyType.Float.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ToOne(Schema schema, Entity entity, Entity entity2, Property[] propertyArr, boolean z) {
        this.schema = schema;
        this.sourceEntity = entity;
        this.targetEntity = entity2;
        this.fkProperties = propertyArr;
        this.useFkProperty = z;
        this.resolvedKeyJavaType = new String[propertyArr.length];
        this.resolvedKeyUseEquals = new boolean[propertyArr.length];
    }

    public boolean checkUseEquals(PropertyType propertyType) {
        switch (AnonymousClass1.$SwitchMap$org$greenrobot$greendao$generator$PropertyType[propertyType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public Property[] getFkProperties() {
        return this.fkProperties;
    }

    public String getName() {
        return this.name;
    }

    public String[] getResolvedKeyJavaType() {
        return this.resolvedKeyJavaType;
    }

    public boolean[] getResolvedKeyUseEquals() {
        return this.resolvedKeyUseEquals;
    }

    public Entity getSourceEntity() {
        return this.sourceEntity;
    }

    public Entity getTargetEntity() {
        return this.targetEntity;
    }

    public void init2ndPass() {
        if (this.name == null) {
            char[] charArray = this.targetEntity.getClassName().toCharArray();
            charArray[0] = Character.toLowerCase(charArray[0]);
            this.name = new String(charArray);
        }
    }

    public void init3ndPass() {
        Property pkProperty = this.targetEntity.getPkProperty();
        Property[] propertyArr = this.fkProperties;
        if (propertyArr.length != 1 || pkProperty == null) {
            throw new RuntimeException("Currently only single FK columns are supported: " + this);
        }
        Property property = propertyArr[0];
        PropertyType propertyType = property.getPropertyType();
        if (propertyType == null) {
            propertyType = pkProperty.getPropertyType();
            property.setPropertyType(propertyType);
            property.init2ndPass();
            property.init3ndPass();
        } else if (propertyType != pkProperty.getPropertyType()) {
            System.err.println("Warning to-one property type does not match target key type: " + this);
        }
        this.resolvedKeyJavaType[0] = this.schema.mapToJavaTypeNullable(propertyType);
        this.resolvedKeyUseEquals[0] = checkUseEquals(propertyType);
    }

    public boolean isUseFkProperty() {
        return this.useFkProperty;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        Entity entity = this.sourceEntity;
        String className = entity != null ? entity.getClassName() : null;
        Entity entity2 = this.targetEntity;
        return "ToOne '" + this.name + "' from " + className + " to " + (entity2 != null ? entity2.getClassName() : null);
    }
}
