package hyperion.hap;

public interface IHapConfig {
    boolean configure(String str);

    boolean enrollPassword(String str, String str2);

    int getUsedSpace(int i);

    void invalidAccess();

    boolean isPasswordEnabled();

    void resetPassword(String str);

    boolean verifyPassword(String str);
}
