package kotlin.reflect.jvm.internal.impl.incremental.components;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class Position implements Serializable {
    public static final a Companion = new a(null);
    private static final Position NO_POSITION = new Position(-1, -1);
    private final int column;
    private final int line;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public Position(int i, int i2) {
        this.line = i;
        this.column = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Position)) {
            return false;
        }
        Position position = (Position) obj;
        return this.line == position.line && this.column == position.column;
    }

    public int hashCode() {
        return (Integer.hashCode(this.line) * 31) + Integer.hashCode(this.column);
    }

    public String toString() {
        return "Position(line=" + this.line + ", column=" + this.column + ')';
    }
}
