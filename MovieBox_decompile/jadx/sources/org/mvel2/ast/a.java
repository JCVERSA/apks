package org.mvel2.ast;

import org.mvel2.compiler.ExecutableStatement;

public interface a {
    String getAssignmentVar();

    boolean isNewDeclaration();

    void setValueStatement(ExecutableStatement executableStatement);
}
