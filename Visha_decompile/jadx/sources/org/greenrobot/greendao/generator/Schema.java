package org.greenrobot.greendao.generator;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Schema {
    public static final String DEFAULT_NAME = "default";
    private final String defaultJavaPackage;
    private String defaultJavaPackageDao;
    private String defaultJavaPackageTest;
    private final List<Entity> entities;
    private boolean hasKeepSectionsByDefault;
    private final String name;
    private final String prefix;
    private Map<PropertyType, String> propertyToDbType;
    private Map<PropertyType, String> propertyToJavaTypeNotNull;
    private Map<PropertyType, String> propertyToJavaTypeNullable;
    private boolean useActiveEntitiesByDefault;
    private final int version;

    public Schema(String str, int i, String str2) {
        this.name = str;
        this.prefix = str.equals(DEFAULT_NAME) ? "" : DaoUtil.capFirst(str);
        this.version = i;
        this.defaultJavaPackage = str2;
        this.entities = new ArrayList();
        initTypeMappings();
    }

    private void initTypeMappings() {
        HashMap map = new HashMap();
        this.propertyToDbType = map;
        PropertyType propertyType = PropertyType.Boolean;
        map.put(propertyType, "INTEGER");
        Map<PropertyType, String> map2 = this.propertyToDbType;
        PropertyType propertyType2 = PropertyType.Byte;
        map2.put(propertyType2, "INTEGER");
        Map<PropertyType, String> map3 = this.propertyToDbType;
        PropertyType propertyType3 = PropertyType.Short;
        map3.put(propertyType3, "INTEGER");
        Map<PropertyType, String> map4 = this.propertyToDbType;
        PropertyType propertyType4 = PropertyType.Int;
        map4.put(propertyType4, "INTEGER");
        Map<PropertyType, String> map5 = this.propertyToDbType;
        PropertyType propertyType5 = PropertyType.Long;
        map5.put(propertyType5, "INTEGER");
        Map<PropertyType, String> map6 = this.propertyToDbType;
        PropertyType propertyType6 = PropertyType.Float;
        map6.put(propertyType6, "REAL");
        Map<PropertyType, String> map7 = this.propertyToDbType;
        PropertyType propertyType7 = PropertyType.Double;
        map7.put(propertyType7, "REAL");
        Map<PropertyType, String> map8 = this.propertyToDbType;
        PropertyType propertyType8 = PropertyType.String;
        map8.put(propertyType8, "TEXT");
        Map<PropertyType, String> map9 = this.propertyToDbType;
        PropertyType propertyType9 = PropertyType.ByteArray;
        map9.put(propertyType9, "BLOB");
        Map<PropertyType, String> map10 = this.propertyToDbType;
        PropertyType propertyType10 = PropertyType.Date;
        map10.put(propertyType10, "INTEGER");
        HashMap map11 = new HashMap();
        this.propertyToJavaTypeNotNull = map11;
        map11.put(propertyType, TypedValues.Custom.S_BOOLEAN);
        this.propertyToJavaTypeNotNull.put(propertyType2, "byte");
        this.propertyToJavaTypeNotNull.put(propertyType3, "short");
        this.propertyToJavaTypeNotNull.put(propertyType4, "int");
        this.propertyToJavaTypeNotNull.put(propertyType5, "long");
        this.propertyToJavaTypeNotNull.put(propertyType6, TypedValues.Custom.S_FLOAT);
        this.propertyToJavaTypeNotNull.put(propertyType7, "double");
        this.propertyToJavaTypeNotNull.put(propertyType8, "String");
        this.propertyToJavaTypeNotNull.put(propertyType9, "byte[]");
        this.propertyToJavaTypeNotNull.put(propertyType10, "java.util.Date");
        HashMap map12 = new HashMap();
        this.propertyToJavaTypeNullable = map12;
        map12.put(propertyType, "Boolean");
        this.propertyToJavaTypeNullable.put(propertyType2, "Byte");
        this.propertyToJavaTypeNullable.put(propertyType3, "Short");
        this.propertyToJavaTypeNullable.put(propertyType4, "Integer");
        this.propertyToJavaTypeNullable.put(propertyType5, "Long");
        this.propertyToJavaTypeNullable.put(propertyType6, "Float");
        this.propertyToJavaTypeNullable.put(propertyType7, "Double");
        this.propertyToJavaTypeNullable.put(propertyType8, "String");
        this.propertyToJavaTypeNullable.put(propertyType9, "byte[]");
        this.propertyToJavaTypeNullable.put(propertyType10, "java.util.Date");
    }

    private String mapType(Map<PropertyType, String> map, PropertyType propertyType) {
        String str = map.get(propertyType);
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("No mapping for " + propertyType);
    }

    public Entity addEntity(String str) {
        Entity entity = new Entity(this, str);
        this.entities.add(entity);
        return entity;
    }

    public Entity addProtobufEntity(String str) {
        Entity entityAddEntity = addEntity(str);
        entityAddEntity.useProtobuf();
        return entityAddEntity;
    }

    public void enableActiveEntitiesByDefault() {
        this.useActiveEntitiesByDefault = true;
    }

    public void enableKeepSectionsByDefault() {
        this.hasKeepSectionsByDefault = true;
    }

    public String getDefaultJavaPackage() {
        return this.defaultJavaPackage;
    }

    public String getDefaultJavaPackageDao() {
        return this.defaultJavaPackageDao;
    }

    public String getDefaultJavaPackageTest() {
        return this.defaultJavaPackageTest;
    }

    public List<Entity> getEntities() {
        return this.entities;
    }

    public String getName() {
        return this.name;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public int getVersion() {
        return this.version;
    }

    public void init2ndPass() {
        if (this.defaultJavaPackageDao == null) {
            this.defaultJavaPackageDao = this.defaultJavaPackage;
        }
        if (this.defaultJavaPackageTest == null) {
            this.defaultJavaPackageTest = this.defaultJavaPackageDao;
        }
        Iterator<Entity> it = this.entities.iterator();
        while (it.hasNext()) {
            it.next().init2ndPass();
        }
    }

    public void init3rdPass() {
        Iterator<Entity> it = this.entities.iterator();
        while (it.hasNext()) {
            it.next().init3rdPass();
        }
    }

    public boolean isHasKeepSectionsByDefault() {
        return this.hasKeepSectionsByDefault;
    }

    public boolean isUseActiveEntitiesByDefault() {
        return this.useActiveEntitiesByDefault;
    }

    public String mapToDbType(PropertyType propertyType) {
        return mapType(this.propertyToDbType, propertyType);
    }

    public String mapToJavaTypeNotNull(PropertyType propertyType) {
        return mapType(this.propertyToJavaTypeNotNull, propertyType);
    }

    public String mapToJavaTypeNullable(PropertyType propertyType) {
        return mapType(this.propertyToJavaTypeNullable, propertyType);
    }

    public void setDefaultJavaPackageDao(String str) {
        this.defaultJavaPackageDao = str;
    }

    public void setDefaultJavaPackageTest(String str) {
        this.defaultJavaPackageTest = str;
    }

    public Schema(int i, String str) {
        this(DEFAULT_NAME, i, str);
    }
}
