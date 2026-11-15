.class public abstract Lr13$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lr13;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr13;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr13;-><init>(Ls13;)V

    sput-object v0, Lr13$a;->a:Lr13;

    return-void
.end method

.method public static bridge synthetic a()Lr13;
    .locals 1

    sget-object v0, Lr13$a;->a:Lr13;

    return-object v0
.end method
