package app.fast.ssh.util;

import app.fast.ssh.ProtectedFastSSH;

public class XOREncryption {
    private static final String key = ProtectedFastSSH.s("ㆧ");

    public static void xor_value_with_key(String str, StringBuilder sb) {
        char[] charArray = ProtectedFastSSH.s("ㆧ").toCharArray();
        for (int i = 0; i < str.length(); i++) {
            int length = i % charArray.length;
            sb.append((char) (charArray[length] ^ str.charAt(i)));
        }
    }
}
