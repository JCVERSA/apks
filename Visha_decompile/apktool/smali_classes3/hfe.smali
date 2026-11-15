.class public final Lhfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loae;


# static fields
.field public static final a:Lhfe;

.field public static final b:Lhfe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhfe;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhfe;-><init>(Z)V

    sput-object v0, Lhfe;->a:Lhfe;

    new-instance v0, Lhfe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhfe;-><init>(Z)V

    sput-object v0, Lhfe;->b:Lhfe;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
