package org.apache.commons.text.diff;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.text.diff.EditCommand;

public class EditScript<T> {
    private final List<EditCommand<T>> commands = new ArrayList();
    private int lcsLength = 0;
    private int modifications = 0;

    public void append(DeleteCommand<T> deleteCommand) {
        this.commands.add(deleteCommand);
        this.modifications++;
    }

    public int getLCSLength() {
        return this.lcsLength;
    }

    public int getModifications() {
        return this.modifications;
    }

    public void visit(final CommandVisitor<T> commandVisitor) {
        this.commands.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((EditCommand) obj).accept(commandVisitor);
            }
        });
    }

    public void append(InsertCommand<T> insertCommand) {
        this.commands.add(insertCommand);
        this.modifications++;
    }

    public void append(KeepCommand<T> keepCommand) {
        this.commands.add(keepCommand);
        this.lcsLength++;
    }
}
