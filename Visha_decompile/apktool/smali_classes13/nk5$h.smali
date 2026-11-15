.class public Lnk5$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk5$h;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iput p2, p0, Lnk5$h;->b:I

    iput p3, p0, Lnk5$h;->c:I

    return-void
.end method
