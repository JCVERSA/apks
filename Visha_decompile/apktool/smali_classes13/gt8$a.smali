.class public abstract Lgt8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lgt8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgt8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgt8;-><init>(Lht8;)V

    sput-object v0, Lgt8$a;->a:Lgt8;

    return-void
.end method

.method public static bridge synthetic a()Lgt8;
    .locals 1

    sget-object v0, Lgt8$a;->a:Lgt8;

    return-object v0
.end method
