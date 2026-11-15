.class public Lj47$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/text/NumberFormat;

.field public final b:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj47$a;->a:Ljava/text/NumberFormat;

    iput-object p2, p0, Lj47$a;->b:Ljava/util/Locale;

    return-void
.end method
