.class public Lfreemarker/core/z$b;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Ldga;

    if-eqz v1, :cond_0

    check-cast v0, Ldga;

    invoke-interface {v0}, Ldga;->getAPI()Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    new-instance v1, Lfreemarker/core/APINotSupportedTemplateException;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-direct {v1, p1, p0, v0}, Lfreemarker/core/APINotSupportedTemplateException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/t0;Lzfa;)V

    throw v1

    :cond_1
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "api_builtin_enabled"

    const-string v1, "\" configuration setting is false. Think twice before you set it to true though. Especially, it shouldn\'t abussed for modifying Map-s and Collection-s."

    const-string v2, "Can\'t use ?api, because the \""

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p1
.end method
