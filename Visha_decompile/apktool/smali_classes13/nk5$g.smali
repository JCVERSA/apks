.class public Lnk5$g;
.super Lnk5$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final c:Lnk5$f;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnk5$e;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    iput-object p3, p0, Lnk5$g;->c:Lnk5$f;

    return-void
.end method
