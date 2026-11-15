.class public Lnk5$c;
.super Lnk5$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Lnk5$b;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILnk5$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnk5$e;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    iput-object p3, p0, Lnk5$c;->c:Lnk5$b;

    return-void
.end method
