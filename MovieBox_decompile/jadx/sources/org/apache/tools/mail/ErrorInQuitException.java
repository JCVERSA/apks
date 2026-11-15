package org.apache.tools.mail;

import java.io.IOException;

public class ErrorInQuitException extends IOException {
    public ErrorInQuitException(IOException iOException) {
        super(iOException.getMessage());
    }
}
