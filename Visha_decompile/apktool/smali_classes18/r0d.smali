.class public Lr0d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lpq5;
    .locals 0

    new-instance p0, Lr0d$a;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    invoke-direct {p0, p1}, Lr0d$a;-><init>(Ljava/util/logging/Logger;)V

    return-object p0
.end method
