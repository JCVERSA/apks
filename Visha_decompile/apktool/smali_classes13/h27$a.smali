.class public abstract Lh27$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lh27;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh27;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh27;-><init>(Li27;)V

    sput-object v0, Lh27$a;->a:Lh27;

    return-void
.end method

.method public static bridge synthetic a()Lh27;
    .locals 1

    sget-object v0, Lh27$a;->a:Lh27;

    return-object v0
.end method
