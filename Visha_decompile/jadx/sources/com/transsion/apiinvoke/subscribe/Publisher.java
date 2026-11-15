package com.transsion.apiinvoke.subscribe;

import java.io.Serializable;
import java.util.Objects;

public class Publisher implements Serializable {
    public static final String MATCH_ALL = "*";
    public static final String PROCESS_KILL = "process-kill";
    private static final long serialVersionUID = 7235351391595038877L;
    public Host host;
    public String matcher;
    public static final String COMMON_CHANNEL = "CommonChannel";
    public static final String DEFAULT_SERVICE = "SubscribeService";
    public static Host DEFAULT = new Host(COMMON_CHANNEL, DEFAULT_SERVICE);

    public static Publisher create(String str, String str2, String str3) {
        Publisher publisher = new Publisher();
        publisher.host = new Host(str, str2);
        publisher.matcher = str3;
        return publisher;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Publisher publisher = (Publisher) obj;
        return Objects.equals(this.host, publisher.host) && Objects.equals(this.matcher, publisher.matcher);
    }

    public String getChannel() {
        return this.host.channel;
    }

    public String getHost() {
        return this.host.toString();
    }

    public String getMatcher() {
        return this.matcher;
    }

    public int hashCode() {
        return Objects.hash(this.host, this.matcher);
    }

    public boolean match(Publisher publisher) {
        if (publisher == null) {
            return false;
        }
        return "*".equals(publisher.matcher) ? publisher.host.equals(this.host) : publisher.equals(this);
    }

    public String toString() {
        return "Publisher{channel='" + this.host.channel + "', apiName='" + this.host.apiName + "', label='" + this.matcher + "'}";
    }

    public static Publisher create(String str, String str2) {
        return create(str, str2, "*");
    }

    public static class Host implements Serializable {
        private static final long serialVersionUID = 5183711151852810011L;
        public String apiName;
        public String channel;

        public Host(String str) {
            try {
                String[] strArrSplit = str.split("#");
                this.channel = strArrSplit[0];
                this.apiName = strArrSplit[1];
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Host host = (Host) obj;
            return Objects.equals(this.channel, host.channel) && Objects.equals(this.apiName, host.apiName);
        }

        public int hashCode() {
            return Objects.hash(this.channel, this.apiName);
        }

        public String toString() {
            return this.channel + "#" + this.apiName;
        }

        public Host(String str, String str2) {
            this.channel = str;
            this.apiName = str2;
        }
    }

    public static Publisher create(Host host, String str) {
        return create(host.channel, host.apiName, str);
    }
}
