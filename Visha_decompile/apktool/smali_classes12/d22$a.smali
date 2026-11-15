.class public abstract Ld22$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ld22;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld22;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld22;-><init>(Le22;)V

    sput-object v0, Ld22$a;->a:Ld22;

    return-void
.end method
