.class public final Lyo2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final synthetic a:Lyo2$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyo2$c;

    invoke-direct {v0}, Lyo2$c;-><init>()V

    sput-object v0, Lyo2$c;->a:Lyo2$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
