package org.greenrobot.greendao.generator;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class Entity {
    private Boolean active;
    private final String className;
    private String classNameDao;
    private String classNameTest;
    private String codeBeforeClass;
    private String dbName;
    private Boolean hasKeepSections;
    private String javaDoc;
    private String javaPackage;
    private String javaPackageDao;
    private String javaPackageTest;
    private boolean nonDefaultDbName;
    private Property pkProperty;
    private String pkType;
    private List<Property> propertiesColumns;
    private boolean protobuf;
    private final Schema schema;
    private boolean skipCreationInDb;
    private boolean skipGeneration;
    private boolean skipGenerationTest;
    private String superclass;
    private final List<Property> properties = new ArrayList();
    private final List<Property> propertiesPk = new ArrayList();
    private final List<Property> propertiesNonPk = new ArrayList();
    private final Set<String> propertyNames = new HashSet();
    private final List<Index> indexes = new ArrayList();
    private final List<Index> multiIndexes = new ArrayList();
    private final List<ToOne> toOneRelations = new ArrayList();
    private final List<ToManyBase> toManyRelations = new ArrayList();
    private final List<ToManyBase> incomingToManyRelations = new ArrayList();
    private final Collection<String> additionalImportsEntity = new TreeSet();
    private final Collection<String> additionalImportsDao = new TreeSet();
    private final List<String> interfacesToImplement = new ArrayList();
    private final List<ContentProvider> contentProviders = new ArrayList();
    private boolean constructors = true;

    public Entity(Schema schema, String str) {
        this.schema = schema;
        this.className = str;
    }

    private void checkAdditionalImportsDaoTargetEntity(Entity entity) {
        if (entity.getJavaPackage().equals(this.javaPackageDao)) {
            return;
        }
        this.additionalImportsDao.add(entity.getJavaPackage() + Consts.DOT + entity.getClassName());
    }

    private void checkAdditionalImportsEntityTargetEntity(Entity entity) {
        if (!entity.getJavaPackage().equals(this.javaPackage)) {
            this.additionalImportsEntity.add(entity.getJavaPackage() + Consts.DOT + entity.getClassName());
        }
        if (entity.getJavaPackageDao().equals(this.javaPackage)) {
            return;
        }
        this.additionalImportsEntity.add(entity.getJavaPackageDao() + Consts.DOT + entity.getClassNameDao());
    }

    private void init3rdPassAdditionalImports() {
        String packageFromFullyQualified;
        if (this.active.booleanValue() && !this.javaPackage.equals(this.javaPackageDao)) {
            this.additionalImportsEntity.add(this.javaPackageDao + Consts.DOT + this.classNameDao);
        }
        Iterator<ToOne> it = this.toOneRelations.iterator();
        while (it.hasNext()) {
            Entity targetEntity = it.next().getTargetEntity();
            checkAdditionalImportsEntityTargetEntity(targetEntity);
            checkAdditionalImportsDaoTargetEntity(targetEntity);
        }
        Iterator<ToManyBase> it2 = this.toManyRelations.iterator();
        while (it2.hasNext()) {
            checkAdditionalImportsEntityTargetEntity(it2.next().getTargetEntity());
        }
        for (ToManyBase toManyBase : this.incomingToManyRelations) {
            if (toManyBase instanceof ToManyWithJoinEntity) {
                checkAdditionalImportsDaoTargetEntity(((ToManyWithJoinEntity) toManyBase).getJoinEntity());
            }
        }
        for (Property property : this.properties) {
            String customType = property.getCustomType();
            if (customType != null) {
                String packageFromFullyQualified2 = DaoUtil.getPackageFromFullyQualified(customType);
                if (packageFromFullyQualified2 != null && !packageFromFullyQualified2.equals(this.javaPackage)) {
                    this.additionalImportsEntity.add(customType);
                }
                if (packageFromFullyQualified2 != null && !packageFromFullyQualified2.equals(this.javaPackageDao)) {
                    this.additionalImportsDao.add(customType);
                }
            }
            String converter = property.getConverter();
            if (converter != null && (packageFromFullyQualified = DaoUtil.getPackageFromFullyQualified(converter)) != null && !packageFromFullyQualified.equals(this.javaPackageDao)) {
                this.additionalImportsDao.add(converter);
            }
        }
    }

    private void init3rdPassRelations() {
        HashSet hashSet = new HashSet();
        for (ToOne toOne : this.toOneRelations) {
            toOne.init3ndPass();
            if (!hashSet.add(toOne.getName().toLowerCase())) {
                throw new RuntimeException("Duplicate name for " + toOne);
            }
        }
        HashSet hashSet2 = new HashSet();
        for (ToManyBase toManyBase : this.toManyRelations) {
            toManyBase.init3rdPass();
            if (toManyBase instanceof ToMany) {
                Entity targetEntity = toManyBase.getTargetEntity();
                for (Property property : ((ToMany) toManyBase).getTargetProperties()) {
                    if (!targetEntity.propertiesColumns.contains(property)) {
                        targetEntity.propertiesColumns.add(property);
                    }
                }
            }
            if (!hashSet2.add(toManyBase.getName().toLowerCase())) {
                throw new RuntimeException("Duplicate name for " + toManyBase);
            }
        }
    }

    public Property.PropertyBuilder addBooleanProperty(String str) {
        return addProperty(PropertyType.Boolean, str);
    }

    public Property.PropertyBuilder addByteArrayProperty(String str) {
        return addProperty(PropertyType.ByteArray, str);
    }

    public Property.PropertyBuilder addByteProperty(String str) {
        return addProperty(PropertyType.Byte, str);
    }

    public ContentProvider addContentProvider() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        ContentProvider contentProvider = new ContentProvider(this.schema, arrayList);
        this.contentProviders.add(contentProvider);
        return contentProvider;
    }

    public Property.PropertyBuilder addDateProperty(String str) {
        return addProperty(PropertyType.Date, str);
    }

    public Property.PropertyBuilder addDoubleProperty(String str) {
        return addProperty(PropertyType.Double, str);
    }

    public Property.PropertyBuilder addFloatProperty(String str) {
        return addProperty(PropertyType.Float, str);
    }

    public Property.PropertyBuilder addIdProperty() {
        Property.PropertyBuilder propertyBuilderAddLongProperty = addLongProperty(TtmlNode.ATTR_ID);
        propertyBuilderAddLongProperty.dbName("_id").primaryKey();
        return propertyBuilderAddLongProperty;
    }

    public Entity addImport(String str) {
        this.additionalImportsEntity.add(str);
        return this;
    }

    public void addIncomingToMany(ToMany toMany) {
        this.incomingToManyRelations.add(toMany);
    }

    public Entity addIndex(Index index) {
        this.indexes.add(index);
        return this;
    }

    public Property.PropertyBuilder addIntProperty(String str) {
        return addProperty(PropertyType.Int, str);
    }

    public Property.PropertyBuilder addLongProperty(String str) {
        return addProperty(PropertyType.Long, str);
    }

    public Property.PropertyBuilder addProperty(PropertyType propertyType, String str) {
        if (this.propertyNames.add(str)) {
            Property.PropertyBuilder propertyBuilder = new Property.PropertyBuilder(this.schema, this, propertyType, str);
            this.properties.add(propertyBuilder.getProperty());
            return propertyBuilder;
        }
        throw new RuntimeException("Property already defined: " + str);
    }

    public Property.PropertyBuilder addShortProperty(String str) {
        return addProperty(PropertyType.Short, str);
    }

    public Property.PropertyBuilder addStringProperty(String str) {
        return addProperty(PropertyType.String, str);
    }

    public ToMany addToMany(Entity entity, Property property) {
        return addToMany((Property[]) null, entity, new Property[]{property});
    }

    public ToOne addToOne(Entity entity, Property property) {
        if (this.protobuf) {
            throw new IllegalStateException("Protobuf entities do not support realtions, currently");
        }
        ToOne toOne = new ToOne(this.schema, this, entity, new Property[]{property}, true);
        this.toOneRelations.add(toOne);
        return toOne;
    }

    public ToOne addToOneWithoutProperty(String str, Entity entity, String str2) {
        return addToOneWithoutProperty(str, entity, str2, false, false);
    }

    public Boolean getActive() {
        return this.active;
    }

    public Collection<String> getAdditionalImportsDao() {
        return this.additionalImportsDao;
    }

    public Collection<String> getAdditionalImportsEntity() {
        return this.additionalImportsEntity;
    }

    public String getClassName() {
        return this.className;
    }

    public String getClassNameDao() {
        return this.classNameDao;
    }

    public String getClassNameTest() {
        return this.classNameTest;
    }

    public String getCodeBeforeClass() {
        return this.codeBeforeClass;
    }

    public List<ContentProvider> getContentProviders() {
        return this.contentProviders;
    }

    public String getDbName() {
        return this.dbName;
    }

    public Boolean getHasKeepSections() {
        return this.hasKeepSections;
    }

    public List<ToManyBase> getIncomingToManyRelations() {
        return this.incomingToManyRelations;
    }

    public List<Index> getIndexes() {
        return this.indexes;
    }

    public List<String> getInterfacesToImplement() {
        return this.interfacesToImplement;
    }

    public String getJavaDoc() {
        return this.javaDoc;
    }

    public String getJavaPackage() {
        return this.javaPackage;
    }

    public String getJavaPackageDao() {
        return this.javaPackageDao;
    }

    public String getJavaPackageTest() {
        return this.javaPackageTest;
    }

    public List<Index> getMultiIndexes() {
        return this.multiIndexes;
    }

    public Property getPkProperty() {
        return this.pkProperty;
    }

    public String getPkType() {
        return this.pkType;
    }

    public List<Property> getProperties() {
        return this.properties;
    }

    public List<Property> getPropertiesColumns() {
        return this.propertiesColumns;
    }

    public List<Property> getPropertiesNonPk() {
        return this.propertiesNonPk;
    }

    public List<Property> getPropertiesPk() {
        return this.propertiesPk;
    }

    public Schema getSchema() {
        return this.schema;
    }

    public String getSuperclass() {
        return this.superclass;
    }

    public List<ToManyBase> getToManyRelations() {
        return this.toManyRelations;
    }

    public List<ToOne> getToOneRelations() {
        return this.toOneRelations;
    }

    public void implementsInterface(String... strArr) {
        for (String str : strArr) {
            if (this.interfacesToImplement.contains(str)) {
                throw new RuntimeException("Interface defined more than once: " + str);
            }
            this.interfacesToImplement.add(str);
        }
    }

    public void implementsSerializable() {
        this.interfacesToImplement.add("java.io.Serializable");
    }

    public void init2ndPass() {
        init2ndPassNamesWithDefaults();
        for (int i = 0; i < this.properties.size(); i++) {
            Property property = this.properties.get(i);
            property.setOrdinal(i);
            property.init2ndPass();
            if (property.isPrimaryKey()) {
                this.propertiesPk.add(property);
            } else {
                this.propertiesNonPk.add(property);
            }
        }
        for (int i2 = 0; i2 < this.indexes.size(); i2++) {
            Index index = this.indexes.get(i2);
            int size = index.getProperties().size();
            if (size == 1) {
                index.getProperties().get(0).setIndex(index);
            } else if (size > 1) {
                this.multiIndexes.add(index);
            }
        }
        if (this.propertiesPk.size() == 1) {
            Property property2 = this.propertiesPk.get(0);
            this.pkProperty = property2;
            this.pkType = this.schema.mapToJavaTypeNullable(property2.getPropertyType());
        } else {
            this.pkType = "Void";
        }
        this.propertiesColumns = new ArrayList(this.properties);
        for (ToOne toOne : this.toOneRelations) {
            toOne.init2ndPass();
            for (Property property3 : toOne.getFkProperties()) {
                if (!this.propertiesColumns.contains(property3)) {
                    this.propertiesColumns.add(property3);
                }
            }
        }
        Iterator<ToManyBase> it = this.toManyRelations.iterator();
        while (it.hasNext()) {
            it.next().init2ndPass();
        }
        if (this.active == null) {
            this.active = Boolean.valueOf(this.schema.isUseActiveEntitiesByDefault());
        }
        this.active = Boolean.valueOf(((this.toOneRelations.isEmpty() && this.toManyRelations.isEmpty()) ? false : true) | this.active.booleanValue());
        if (this.hasKeepSections == null) {
            this.hasKeepSections = Boolean.valueOf(this.schema.isHasKeepSectionsByDefault());
        }
        init2ndPassIndexNamesWithDefaults();
        Iterator<ContentProvider> it2 = this.contentProviders.iterator();
        while (it2.hasNext()) {
            it2.next().init2ndPass();
        }
    }

    public void init2ndPassIndexNamesWithDefaults() {
        for (int i = 0; i < this.indexes.size(); i++) {
            Index index = this.indexes.get(i);
            if (index.getName() == null) {
                String str = "IDX_" + getDbName();
                List<Property> properties = index.getProperties();
                for (int i2 = 0; i2 < properties.size(); i2++) {
                    str = str + "_" + properties.get(i2).getDbName();
                    if ("DESC".equalsIgnoreCase(index.getPropertiesOrder().get(i2))) {
                        str = str + "_DESC";
                    }
                }
                index.setDefaultName(str);
            }
        }
    }

    public void init2ndPassNamesWithDefaults() {
        if (this.dbName == null) {
            this.dbName = DaoUtil.dbName(this.className);
            this.nonDefaultDbName = false;
        }
        if (this.classNameDao == null) {
            this.classNameDao = this.className + "Dao";
        }
        if (this.classNameTest == null) {
            this.classNameTest = this.className + "Test";
        }
        if (this.javaPackage == null) {
            this.javaPackage = this.schema.getDefaultJavaPackage();
        }
        if (this.javaPackageDao == null) {
            String defaultJavaPackageDao = this.schema.getDefaultJavaPackageDao();
            this.javaPackageDao = defaultJavaPackageDao;
            if (defaultJavaPackageDao == null) {
                this.javaPackageDao = this.javaPackage;
            }
        }
        if (this.javaPackageTest == null) {
            String defaultJavaPackageTest = this.schema.getDefaultJavaPackageTest();
            this.javaPackageTest = defaultJavaPackageTest;
            if (defaultJavaPackageTest == null) {
                this.javaPackageTest = this.javaPackage;
            }
        }
    }

    public void init3rdPass() {
        Iterator<Property> it = this.properties.iterator();
        while (it.hasNext()) {
            it.next().init3ndPass();
        }
        init3rdPassRelations();
        init3rdPassAdditionalImports();
    }

    public boolean isConstructors() {
        return this.constructors;
    }

    public boolean isNonDefaultDbName() {
        return this.nonDefaultDbName;
    }

    public boolean isProtobuf() {
        return this.protobuf;
    }

    public boolean isSkipCreationInDb() {
        return this.skipCreationInDb;
    }

    public boolean isSkipGeneration() {
        return this.skipGeneration;
    }

    public boolean isSkipGenerationTest() {
        return this.skipGenerationTest;
    }

    public void setActive(Boolean bool) {
        this.active = bool;
    }

    public void setClassNameDao(String str) {
        this.classNameDao = str;
    }

    public void setClassNameTest(String str) {
        this.classNameTest = str;
    }

    public void setCodeBeforeClass(String str) {
        this.codeBeforeClass = str;
    }

    public void setConstructors(boolean z) {
        this.constructors = z;
    }

    public void setDbName(String str) {
        this.dbName = str;
        this.nonDefaultDbName = str != null;
    }

    public void setHasKeepSections(Boolean bool) {
        this.hasKeepSections = bool;
    }

    public void setJavaDoc(String str) {
        this.javaDoc = DaoUtil.checkConvertToJavaDoc(str, "");
    }

    public void setJavaPackage(String str) {
        this.javaPackage = str;
    }

    public void setJavaPackageDao(String str) {
        this.javaPackageDao = str;
    }

    public void setJavaPackageTest(String str) {
        this.javaPackageTest = str;
    }

    public void setSkipCreationInDb(boolean z) {
        this.skipCreationInDb = z;
    }

    public void setSkipGeneration(boolean z) {
        this.skipGeneration = z;
    }

    public void setSkipGenerationTest(boolean z) {
        this.skipGenerationTest = z;
    }

    @Deprecated
    public void setSkipTableCreation(boolean z) {
        setSkipCreationInDb(z);
    }

    public void setSuperclass(String str) {
        this.superclass = str;
    }

    @Deprecated
    public void setTableName(String str) {
        setDbName(str);
    }

    public String toString() {
        return "Entity " + this.className + " (package: " + this.javaPackage + ")";
    }

    public Entity useProtobuf() {
        this.protobuf = true;
        return this;
    }

    public void validatePropertyExists(Property property) {
        if (this.properties.contains(property)) {
            return;
        }
        throw new RuntimeException("Property " + property + " does not exist in " + this);
    }

    public ToOne addToOneWithoutProperty(String str, Entity entity, String str2, boolean z, boolean z2) {
        Property.PropertyBuilder propertyBuilder = new Property.PropertyBuilder(this.schema, this, null, str);
        if (z) {
            propertyBuilder.notNull();
        }
        if (z2) {
            propertyBuilder.unique();
        }
        propertyBuilder.dbName(str2);
        ToOne toOne = new ToOne(this.schema, this, entity, new Property[]{propertyBuilder.getProperty()}, false);
        toOne.setName(str);
        this.toOneRelations.add(toOne);
        return toOne;
    }

    public ToMany addToMany(Entity entity, Property property, String str) {
        ToMany toManyAddToMany = addToMany(entity, property);
        toManyAddToMany.setName(str);
        return toManyAddToMany;
    }

    public ToMany addToMany(Property property, Entity entity, Property property2) {
        return addToMany(new Property[]{property}, entity, new Property[]{property2});
    }

    public ToOne addToOne(Entity entity, Property property, String str) {
        ToOne toOneAddToOne = addToOne(entity, property);
        toOneAddToOne.setName(str);
        return toOneAddToOne;
    }

    public ToMany addToMany(Property[] propertyArr, Entity entity, Property[] propertyArr2) {
        if (!this.protobuf) {
            ToMany toMany = new ToMany(this.schema, this, propertyArr, entity, propertyArr2);
            this.toManyRelations.add(toMany);
            entity.incomingToManyRelations.add(toMany);
            return toMany;
        }
        throw new IllegalStateException("Protobuf entities do not support relations, currently");
    }

    public ToManyWithJoinEntity addToMany(Entity entity, Entity entity2, Property property, Property property2) {
        ToManyWithJoinEntity toManyWithJoinEntity = new ToManyWithJoinEntity(this.schema, this, entity, entity2, property, property2);
        this.toManyRelations.add(toManyWithJoinEntity);
        entity.incomingToManyRelations.add(toManyWithJoinEntity);
        return toManyWithJoinEntity;
    }
}
