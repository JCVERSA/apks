package org.schabi.newpipe.extractor.stream;

import java.io.Serializable;
import java.util.Objects;

public class Description implements Serializable {
    public static final Description EMPTY_DESCRIPTION = new Description("", 3);
    public static final int HTML = 1;
    public static final int MARKDOWN = 2;
    public static final int PLAIN_TEXT = 3;
    private final String content;
    private final int type;

    public Description(String str, int i) {
        this.type = i;
        if (str == null) {
            this.content = "";
        } else {
            this.content = str;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Description description = (Description) obj;
        return this.type == description.type && Objects.equals(this.content, description.content);
    }

    public String getContent() {
        return this.content;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(this.content, Integer.valueOf(this.type));
    }
}
