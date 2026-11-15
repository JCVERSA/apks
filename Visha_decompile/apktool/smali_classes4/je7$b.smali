.class public abstract Lje7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lje7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lje7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lje7;-><init>(Lje7$a;)V

    sput-object v0, Lje7$b;->a:Lje7;

    return-void
.end method

.method public static synthetic a()Lje7;
    .locals 1

    sget-object v0, Lje7$b;->a:Lje7;

    return-object v0
.end method
