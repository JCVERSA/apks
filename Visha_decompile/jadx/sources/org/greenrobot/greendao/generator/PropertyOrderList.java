package org.greenrobot.greendao.generator;

import java.util.ArrayList;
import java.util.List;

public class PropertyOrderList {
    private List<Property> properties = new ArrayList();
    private List<String> propertiesOrder = new ArrayList();

    public void addOrderRaw(String str) {
        this.properties.add(null);
        this.propertiesOrder.add(str);
    }

    public void addProperty(Property property) {
        this.properties.add(property);
        this.propertiesOrder.add(null);
    }

    public void addPropertyAsc(Property property) {
        this.properties.add(property);
        this.propertiesOrder.add("ASC");
    }

    public void addPropertyDesc(Property property) {
        this.properties.add(property);
        this.propertiesOrder.add("DESC");
    }

    public String getCommaSeparatedString(String str) {
        StringBuilder sb = new StringBuilder();
        int size = this.properties.size();
        for (int i = 0; i < size; i++) {
            Property property = this.properties.get(i);
            String str2 = this.propertiesOrder.get(i);
            if (property != null) {
                if (str != null) {
                    sb.append(str);
                    sb.append('.');
                }
                sb.append('\'');
                sb.append(property.getDbName());
                sb.append('\'');
                sb.append(' ');
            }
            if (str2 != null) {
                sb.append(str2);
            }
            if (i < size - 1) {
                sb.append(',');
            }
        }
        return sb.toString();
    }

    public String getOrderSpec() {
        List<Property> properties = getProperties();
        List<String> propertiesOrder = getPropertiesOrder();
        StringBuilder sb = new StringBuilder();
        int size = properties.size();
        for (int i = 0; i < size; i++) {
            Property property = properties.get(i);
            String str = propertiesOrder.get(i);
            sb.append(property.getPropertyName());
            if (str != null) {
                sb.append(' ');
                sb.append(str);
            }
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public List<Property> getProperties() {
        return this.properties;
    }

    public List<String> getPropertiesOrder() {
        return this.propertiesOrder;
    }

    public boolean isEmpty() {
        return this.properties.isEmpty();
    }
}
