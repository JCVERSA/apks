package defpackage;

public interface ko4 {
    int hash();

    default int l() {
        return hash();
    }
}
