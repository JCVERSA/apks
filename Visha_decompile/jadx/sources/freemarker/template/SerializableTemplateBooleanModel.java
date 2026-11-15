package freemarker.template;

import java.io.Serializable;

interface SerializableTemplateBooleanModel extends a, Serializable {
    @Override
    boolean getAsBoolean() throws TemplateModelException;
}
