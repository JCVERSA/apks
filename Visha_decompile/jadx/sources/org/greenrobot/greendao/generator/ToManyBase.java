package org.greenrobot.greendao.generator;

public abstract class ToManyBase {
    private String name;
    private final PropertyOrderList propertyOrderList = new PropertyOrderList();
    private final Schema schema;
    protected final Entity sourceEntity;
    protected final Entity targetEntity;

    public ToManyBase(Schema schema, Entity entity, Entity entity2) {
        this.schema = schema;
        this.sourceEntity = entity;
        this.targetEntity = entity2;
    }

    public String getName() {
        return this.name;
    }

    public String getOrder() {
        if (this.propertyOrderList.isEmpty()) {
            return null;
        }
        return this.propertyOrderList.getCommaSeparatedString("T");
    }

    public String getOrderSpec() {
        if (this.propertyOrderList.isEmpty()) {
            return null;
        }
        return this.propertyOrderList.getOrderSpec();
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
            this.name = new String(charArray) + "List";
        }
    }

    public void init3rdPass() {
    }

    public void orderAsc(Property... propertyArr) {
        for (Property property : propertyArr) {
            this.targetEntity.validatePropertyExists(property);
            this.propertyOrderList.addPropertyAsc(property);
        }
    }

    public void orderDesc(Property... propertyArr) {
        for (Property property : propertyArr) {
            this.targetEntity.validatePropertyExists(property);
            this.propertyOrderList.addPropertyDesc(property);
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        Entity entity = this.sourceEntity;
        String className = entity != null ? entity.getClassName() : null;
        Entity entity2 = this.targetEntity;
        return "ToMany '" + this.name + "' from " + className + " to " + (entity2 != null ? entity2.getClassName() : null);
    }
}
