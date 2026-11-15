.class public abstract Llk7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llk7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Llk7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llk7;

    invoke-direct {v0}, Llk7;-><init>()V

    sput-object v0, Llk7$a;->a:Llk7;

    return-void
.end method
