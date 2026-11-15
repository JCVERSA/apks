.class public Lnk5$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

.field public final b:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iput p2, p0, Lnk5$e;->b:I

    return-void
.end method
