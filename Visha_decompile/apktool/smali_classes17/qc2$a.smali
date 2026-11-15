.class public final Lqc2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lqc2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc2$a;

    invoke-direct {v0}, Lqc2$a;-><init>()V

    sput-object v0, Lqc2$a;->a:Lqc2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
