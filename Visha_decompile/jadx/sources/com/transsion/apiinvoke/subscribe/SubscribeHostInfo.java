package com.transsion.apiinvoke.subscribe;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class SubscribeHostInfo implements Serializable {
    private static final long serialVersionUID = -596722602408822201L;
    private Publisher.Host host;
    private List<SubscribeTypeCount> subscribeTypes;

    public static class SubscribeTypeCount implements Serializable {
        private static final long serialVersionUID = -1620133647892476598L;
        public int subscribeCount;
        public String type;

        public SubscribeTypeCount() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.type, ((SubscribeTypeCount) obj).type);
        }

        public int hashCode() {
            return Objects.hash(this.type);
        }

        public String toString() {
            return "SubscribeTypeCount{type='" + this.type + "', subscribeCount=" + this.subscribeCount + '}';
        }

        public SubscribeTypeCount(String str, int i) {
            this.type = str;
            this.subscribeCount = i;
        }
    }

    public SubscribeHostInfo() {
    }

    private static SubscribeTypeCount foundTypeCount(List<SubscribeTypeCount> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (SubscribeTypeCount subscribeTypeCount : list) {
                if (subscribeTypeCount.type.equals(str)) {
                    return subscribeTypeCount;
                }
            }
        }
        return null;
    }

    public SubscribeTypeCount findSubscribeType(String str) {
        return foundTypeCount(this.subscribeTypes, str);
    }

    public String getChannel() {
        Publisher.Host host = this.host;
        return host != null ? host.channel : "";
    }

    public Publisher.Host getHost() {
        return this.host;
    }

    public List<SubscribeTypeCount> getSubscribeTypes() {
        return this.subscribeTypes;
    }

    public void setHost(Publisher.Host host) {
        this.host = host;
    }

    public void setSubscribeTypes(List<SubscribeTypeCount> list) {
        this.subscribeTypes = list;
    }

    public void subscribeType(String str) {
        SubscribeTypeCount subscribeTypeCountFoundTypeCount = foundTypeCount(this.subscribeTypes, str);
        if (subscribeTypeCountFoundTypeCount == null) {
            subscribeType(str, 1);
            return;
        }
        int iIndexOf = this.subscribeTypes.indexOf(subscribeTypeCountFoundTypeCount);
        subscribeTypeCountFoundTypeCount.subscribeCount++;
        this.subscribeTypes.set(iIndexOf, subscribeTypeCountFoundTypeCount);
    }

    public void unSubscribeType(String str) {
        SubscribeTypeCount subscribeTypeCountFoundTypeCount = foundTypeCount(this.subscribeTypes, str);
        if (subscribeTypeCountFoundTypeCount == null) {
            return;
        }
        int iIndexOf = this.subscribeTypes.indexOf(subscribeTypeCountFoundTypeCount);
        int i = subscribeTypeCountFoundTypeCount.subscribeCount - 1;
        subscribeTypeCountFoundTypeCount.subscribeCount = i;
        if (i == 0) {
            this.subscribeTypes.remove(subscribeTypeCountFoundTypeCount);
        } else {
            this.subscribeTypes.set(iIndexOf, subscribeTypeCountFoundTypeCount);
        }
    }

    public void updateSubscribeTypeCount(String str, int i) {
        SubscribeTypeCount subscribeTypeCountFoundTypeCount = foundTypeCount(this.subscribeTypes, str);
        if (subscribeTypeCountFoundTypeCount == null) {
            return;
        }
        subscribeTypeCountFoundTypeCount.subscribeCount = i;
    }

    public SubscribeHostInfo(Publisher.Host host) {
        this(host, new ArrayList(16));
    }

    public SubscribeHostInfo(Publisher.Host host, List<SubscribeTypeCount> list) {
        this.host = host;
        this.subscribeTypes = list;
    }

    public void subscribeType(String str, int i) {
        SubscribeTypeCount next;
        List<SubscribeTypeCount> list = this.subscribeTypes;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.subscribeTypes = arrayList;
            arrayList.add(new SubscribeTypeCount(str, i));
            return;
        }
        Iterator<SubscribeTypeCount> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!str.equals(next.type));
        if (next == null) {
            this.subscribeTypes.add(new SubscribeTypeCount(str, i));
        } else {
            next.subscribeCount = i;
        }
    }
}
