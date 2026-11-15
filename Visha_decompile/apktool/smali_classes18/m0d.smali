.class public Lm0d;
.super Lf0d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lf0d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lhx0;->h(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
