package org.slf4j.helpers;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.slf4j.Marker;

public class BasicMarker implements Marker {
    private static String CLOSE = " ]";
    private static String OPEN = "[ ";
    private static String SEP = ", ";
    private static final long serialVersionUID = 1803952589649545191L;
    private final String name;
    private List<Marker> referenceList;

    public BasicMarker(String str) {
        if (str == null) {
            throw new IllegalArgumentException("A marker name cannot be null");
        }
        this.name = str;
    }

    @Override
    public synchronized void add(Marker marker) {
        try {
            if (marker == null) {
                throw new IllegalArgumentException("A null value cannot be added to a Marker as reference.");
            }
            if (contains(marker)) {
                return;
            }
            if (marker.contains(this)) {
                return;
            }
            if (this.referenceList == null) {
                this.referenceList = new Vector();
            }
            this.referenceList.add(marker);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public boolean contains(Marker marker) {
        if (marker == null) {
            throw new IllegalArgumentException("Other cannot be null");
        }
        if (equals(marker)) {
            return true;
        }
        if (!hasReferences()) {
            return false;
        }
        Iterator<Marker> it = this.referenceList.iterator();
        while (it.hasNext()) {
            if (it.next().contains(marker)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Marker)) {
            return this.name.equals(((Marker) obj).getName());
        }
        return false;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public boolean hasChildren() {
        return hasReferences();
    }

    @Override
    public synchronized boolean hasReferences() {
        List<Marker> list;
        list = this.referenceList;
        return list != null && list.size() > 0;
    }

    @Override
    public int hashCode() {
        return this.name.hashCode();
    }

    @Override
    public synchronized Iterator<Marker> iterator() {
        List<Marker> list = this.referenceList;
        if (list != null) {
            return list.iterator();
        }
        return Collections.emptyList().iterator();
    }

    @Override
    public synchronized boolean remove(Marker marker) {
        List<Marker> list = this.referenceList;
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (marker.equals(this.referenceList.get(i))) {
                this.referenceList.remove(i);
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (!hasReferences()) {
            return getName();
        }
        Iterator<Marker> it = iterator();
        StringBuilder sb = new StringBuilder(getName());
        sb.append(' ');
        sb.append(OPEN);
        while (it.hasNext()) {
            sb.append(it.next().getName());
            if (it.hasNext()) {
                sb.append(SEP);
            }
        }
        sb.append(CLOSE);
        return sb.toString();
    }

    @Override
    public boolean contains(String str) {
        if (str != null) {
            if (this.name.equals(str)) {
                return true;
            }
            if (!hasReferences()) {
                return false;
            }
            Iterator<Marker> it = this.referenceList.iterator();
            while (it.hasNext()) {
                if (it.next().contains(str)) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Other cannot be null");
    }
}
