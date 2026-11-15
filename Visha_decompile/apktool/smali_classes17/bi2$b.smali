.class public final Lbi2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:Lbi2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbi2$b;

    invoke-direct {v0}, Lbi2$b;-><init>()V

    sput-object v0, Lbi2$b;->a:Lbi2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
