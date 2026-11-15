package org.proninyaroslav.libretorrent.core.sorting;

public class BaseSorting {
    public Direction a;
    public String b;

    public enum Direction {
        ASC,
        DESC;

        public static Direction fromValue(String str) {
            for (Direction direction : (Direction[]) Direction.class.getEnumConstants()) {
                if (direction.toString().equalsIgnoreCase(str)) {
                    return direction;
                }
            }
            return ASC;
        }
    }

    public interface SortingColumnsInterface<F> {
    }

    public String a() {
        return this.b;
    }

    public Direction b() {
        return this.a;
    }

    public String toString() {
        return "BaseSorting{direction=" + this.a + ", columnName='" + this.b + "'}";
    }
}
