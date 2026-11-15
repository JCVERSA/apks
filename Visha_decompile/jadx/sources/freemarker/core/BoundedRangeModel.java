package freemarker.core;

final class BoundedRangeModel extends RangeModel {
    private final boolean affectedByStringSlicingBug;
    private final boolean rightAdaptive;
    private final int size;
    private final int step;

    public BoundedRangeModel(int i, int i2, boolean z, boolean z2) {
        super(i);
        this.step = i <= i2 ? 1 : -1;
        this.size = Math.abs(i2 - i) + (z ? 1 : 0);
        this.rightAdaptive = z2;
        this.affectedByStringSlicingBug = z;
    }

    @Override
    public int getStep() {
        return this.step;
    }

    @Override
    public boolean isAffactedByStringSlicingBug() {
        return this.affectedByStringSlicingBug;
    }

    @Override
    public boolean isRightAdaptive() {
        return this.rightAdaptive;
    }

    @Override
    public boolean isRightUnbounded() {
        return false;
    }

    @Override
    public int size() {
        return this.size;
    }
}
