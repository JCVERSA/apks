.class public abstract Lrg8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrg8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lrg8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrg8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrg8;-><init>(Lsg8;)V

    sput-object v0, Lrg8$a;->a:Lrg8;

    return-void
.end method

.method public static bridge synthetic a()Lrg8;
    .locals 1

    sget-object v0, Lrg8$a;->a:Lrg8;

    return-object v0
.end method
