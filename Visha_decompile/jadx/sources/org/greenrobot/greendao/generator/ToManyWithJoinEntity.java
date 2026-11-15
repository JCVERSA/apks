package org.greenrobot.greendao.generator;

public class ToManyWithJoinEntity extends ToManyBase {
    private final Entity joinEntity;
    private final Property sourceProperty;
    private final Property targetProperty;

    public ToManyWithJoinEntity(Schema schema, Entity entity, Entity entity2, Entity entity3, Property property, Property property2) {
        super(schema, entity, entity2);
        this.joinEntity = entity3;
        this.sourceProperty = property;
        this.targetProperty = property2;
    }

    public Entity getJoinEntity() {
        return this.joinEntity;
    }

    public Property getSourceProperty() {
        return this.sourceProperty;
    }

    public Property getTargetProperty() {
        return this.targetProperty;
    }

    @Override
    public void init3rdPass() {
        super.init3rdPass();
        if (this.sourceEntity.getPropertiesPk().isEmpty()) {
            throw new RuntimeException("Source entity has no primary key, but we need it for " + this);
        }
        if (this.targetEntity.getPropertiesPk().isEmpty()) {
            throw new RuntimeException("Target entity has no primary key, but we need it for " + this);
        }
    }
}
