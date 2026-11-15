.class Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$TemplateProcessingThreadInterruptedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Template processing thread \"interrupted\" flag was set."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
