.class public final Loj3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:Loj3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loj3$b;

    invoke-direct {v0}, Loj3$b;-><init>()V

    sput-object v0, Loj3$b;->a:Loj3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
