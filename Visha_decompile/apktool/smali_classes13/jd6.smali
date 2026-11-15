.class public final synthetic Ljd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljd6;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljd6;->a:Ljava/lang/String;

    invoke-static {p0}, Lkd6;->e0(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object p0

    return-object p0
.end method
