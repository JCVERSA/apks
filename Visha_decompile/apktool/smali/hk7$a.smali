.class public abstract Lhk7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhk7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lhk7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhk7;

    invoke-direct {v0}, Lhk7;-><init>()V

    sput-object v0, Lhk7$a;->a:Lhk7;

    return-void
.end method
