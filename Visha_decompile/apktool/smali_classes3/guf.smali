.class public final synthetic Lguf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljuf;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Ljuf;-><init>(Ljava/util/List;)V

    return-object p0
.end method
