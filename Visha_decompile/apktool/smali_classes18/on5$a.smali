.class public final Lon5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lon5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lon5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lon5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lon5$a;

    invoke-direct {v0}, Lon5$a;-><init>()V

    sput-object v0, Lon5$a;->a:Lon5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsm9;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
