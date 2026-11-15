.class public final Lyea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;
    .locals 0

    invoke-static {p1, p2}, Lfreemarker/core/f1;->n(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0
.end method
