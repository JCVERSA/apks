.class public abstract Lr03$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lr03;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr03;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr03;-><init>(Lr03$a;)V

    sput-object v0, Lr03$b;->a:Lr03;

    return-void
.end method

.method public static synthetic a()Lr03;
    .locals 1

    sget-object v0, Lr03$b;->a:Lr03;

    return-object v0
.end method
