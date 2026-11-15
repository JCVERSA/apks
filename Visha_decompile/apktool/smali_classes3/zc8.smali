.class public abstract Lzc8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc8$b;
    }
.end annotation


# static fields
.field public static final a:Lcf3;

.field public static volatile b:Lcf3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzc8$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzc8$b;-><init>(Lzc8$a;)V

    sput-object v0, Lzc8;->a:Lcf3;

    sput-object v0, Lzc8;->b:Lcf3;

    return-void
.end method

.method public static a()Lcf3;
    .locals 1

    sget-object v0, Lzc8;->b:Lcf3;

    return-object v0
.end method
