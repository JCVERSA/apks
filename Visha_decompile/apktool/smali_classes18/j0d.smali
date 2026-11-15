.class public Lj0d;
.super Lf0d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateException;)V
    .locals 0

    invoke-direct {p0, p1}, Lf0d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lfreemarker/template/TemplateException;

    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getMessageWithoutStackTop()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
