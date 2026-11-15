.class public final Lmq2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmq2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:Lmq2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmq2$b;

    invoke-direct {v0}, Lmq2$b;-><init>()V

    sput-object v0, Lmq2$b;->a:Lmq2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
