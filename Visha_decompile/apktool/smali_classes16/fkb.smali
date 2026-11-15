.class public Lfkb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfkb$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfkb$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfkb;-><init>()V

    return-void
.end method

.method public static b()Lfkb;
    .locals 1

    invoke-static {}, Lfkb$b;->a()Lfkb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfkb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfkb;->a:Ljava/lang/String;

    return-void
.end method
