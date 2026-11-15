.class public abstract Ltg8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ltg8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltg8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltg8;-><init>(Lug8;)V

    sput-object v0, Ltg8$a;->a:Ltg8;

    return-void
.end method

.method public static bridge synthetic a()Ltg8;
    .locals 1

    sget-object v0, Ltg8$a;->a:Ltg8;

    return-object v0
.end method
