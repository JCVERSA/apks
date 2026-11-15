package org.greenrobot.greendao.generator;

import java.util.List;

public class ToMany extends ToManyBase {
    private Property[] sourceProperties;
    private final Property[] targetProperties;

    public ToMany(Schema schema, Entity entity, Property[] propertyArr, Entity entity2, Property[] propertyArr2) {
        super(schema, entity, entity2);
        this.sourceProperties = propertyArr;
        this.targetProperties = propertyArr2;
    }

    public Property[] getSourceProperties() {
        return this.sourceProperties;
    }

    public Property[] getTargetProperties() {
        return this.targetProperties;
    }

    @Override
    public void init2ndPass() {
        super.init2ndPass();
        if (this.sourceProperties == null) {
            List<Property> propertiesPk = this.sourceEntity.getPropertiesPk();
            if (propertiesPk.isEmpty()) {
                throw new RuntimeException("Source entity has no primary key, but we need it for " + this);
            }
            Property[] propertyArr = new Property[propertiesPk.size()];
            this.sourceProperties = propertyArr;
            this.sourceProperties = (Property[]) propertiesPk.toArray(propertyArr);
        }
        int length = this.sourceProperties.length;
        if (length != this.targetProperties.length) {
            throw new RuntimeException("Source properties do not match target properties: " + this);
        }
        for (int i = 0; i < length; i++) {
            Property property = this.sourceProperties[i];
            Property property2 = this.targetProperties[i];
            PropertyType propertyType = property.getPropertyType();
            PropertyType propertyType2 = property2.getPropertyType();
            if (propertyType == null || propertyType2 == null) {
                throw new RuntimeException("Property type uninitialized");
            }
            if (propertyType != propertyType2) {
                System.err.println("Warning to-one property type does not match target key type: " + this);
            }
        }
    }

    @Override
    public void init3rdPass() {
        super.init3rdPass();
    }

    public void setSourceProperties(Property[] propertyArr) {
        this.sourceProperties = propertyArr;
    }
}
