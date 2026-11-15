.class public Lcom/transsion/audiotagger/tag/reference/Languages;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractStringStringValuePair;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ID:Ljava/lang/String; = "eng"

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "English"

.field public static final LANGUAGE_FIELD_SIZE:I = 0x3

.field public static final MEDIA_MONKEY_ID:Ljava/lang/String; = "XXX"

.field public static final WINAMP_ID:Ljava/lang/String; = "\u0000\u0000\u0000"

.field private static languageTypes:Lcom/transsion/audiotagger/tag/reference/Languages;


# direct methods
.method private constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractStringStringValuePair;-><init>()V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "aar"

    const-string v2, "Afar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "abk"

    const-string v2, "Abkhazian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ace"

    const-string v2, "Achinese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ach"

    const-string v2, "Acoli"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ada"

    const-string v2, "Adangme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "afa"

    const-string v2, "Afro-Asiatic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "afh"

    const-string v2, "Afrihili"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "afr"

    const-string v2, "Afrikaans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "aka"

    const-string v2, "Akan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "akk"

    const-string v2, "Akkadian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "alb"

    const-string v2, "Albanian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ale"

    const-string v3, "Aleut"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "alg"

    const-string v3, "Algonquian languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "amh"

    const-string v3, "Amharic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ang"

    const-string v3, "Old English,(ca.450-1100)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "apa"

    const-string v3, "Apache languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ara"

    const-string v3, "Arabic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "arc"

    const-string v3, "Aramaic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "arm"

    const-string v3, "Armenian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "arn"

    const-string v4, "Araucanian"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "arp"

    const-string v4, "Arapaho"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "art"

    const-string v4, "Artificial"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "arw"

    const-string v4, "Arawak"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "asm"

    const-string v4, "Assamese"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ast"

    const-string v4, "Asturian; Bable"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ath"

    const-string v4, "Athapascan languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "aus"

    const-string v4, "Australian languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ava"

    const-string v4, "Avaric"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ave"

    const-string v4, "Avestan"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "awa"

    const-string v4, "Awadhi"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "aym"

    const-string v4, "Aymara"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "aze"

    const-string v4, "Azerbaijani"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bad"

    const-string v4, "Banda"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bai"

    const-string v4, "Bamileke languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bak"

    const-string v4, "Bashkir"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bal"

    const-string v4, "Baluchi"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bam"

    const-string v4, "Bambara"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ban"

    const-string v4, "Balinese"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "baq"

    const-string v4, "Basque"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bas"

    const-string v5, "Basa"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bat"

    const-string v5, "Baltic"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bej"

    const-string v5, "Beja"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bel"

    const-string v5, "Belarusian"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bem"

    const-string v5, "Bemba"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ben"

    const-string v5, "Bengali"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ber"

    const-string v5, "Berber"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bho"

    const-string v5, "Bhojpuri"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bih"

    const-string v5, "Bihari"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bik"

    const-string v5, "Bikol"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bin"

    const-string v5, "Bini"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bis"

    const-string v5, "Bislama"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bla"

    const-string v5, "Siksika"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bnt"

    const-string v5, "Bantu"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bod"

    const-string v5, "Tibetan"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bos"

    const-string v6, "Bosnian"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bra"

    const-string v6, "Braj"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bre"

    const-string v6, "Breton"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "btk"

    const-string v6, "Batak (Indonesia)"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bua"

    const-string v6, "Buriat"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bug"

    const-string v6, "Buginese"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bul"

    const-string v6, "Bulgarian"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "bur"

    const-string v6, "Burmese"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cad"

    const-string v7, "Caddo"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cai"

    const-string v7, "Central American Indian"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "car"

    const-string v7, "Carib"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cat"

    const-string v7, "Catalan"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cau"

    const-string v7, "Caucasian"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ceb"

    const-string v7, "Cebuano"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cel"

    const-string v7, "Celtic"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ces"

    const-string v7, "Czech"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cha"

    const-string v8, "Chamorro"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chb"

    const-string v8, "Chibcha"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "che"

    const-string v8, "Chechen"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chg"

    const-string v8, "Chagatai"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chi"

    const-string v8, "Chinese"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chk"

    const-string v9, "Chuukese"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chm"

    const-string v9, "Mari"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chn"

    const-string v9, "Chinook jargon"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cho"

    const-string v9, "Choctaw"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chp"

    const-string v9, "Chipewyan"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chr"

    const-string v9, "Cherokee"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chu"

    const-string v9, "Church Slavic"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chv"

    const-string v9, "Chuvash"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "chy"

    const-string v9, "Cheyenne"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cmc"

    const-string v9, "Chamic languages"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cop"

    const-string v9, "Coptic"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cor"

    const-string v9, "Cornish"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cos"

    const-string v9, "Corsican"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cpe"

    const-string v9, "Creoles and pidgins, English based"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cpf"

    const-string v9, "Creoles and pidgins, French based"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cpp"

    const-string v9, "Creoles and pidgins"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cre"

    const-string v10, "Cree"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "crp"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cus"

    const-string v9, "Cushitic"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cym"

    const-string v9, "Welsh"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "cze"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dak"

    const-string v7, "Dakota"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dan"

    const-string v7, "Danish"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "day"

    const-string v7, "Dayak"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "del"

    const-string v7, "Delaware"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "den"

    const-string v7, "Slave (Athapascan)"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "deu"

    const-string v7, "German"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dgr"

    const-string v10, "Dogrib"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "din"

    const-string v10, "Dinka"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "div"

    const-string v10, "Divehi"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "doi"

    const-string v10, "Dogri"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dra"

    const-string v10, "Dravidian"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dua"

    const-string v10, "Duala"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dum"

    const-string v10, "Dutch, Middle (ca.1050-1350)"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dut"

    const-string v10, "Dutch"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dyu"

    const-string v11, "Dyula"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "dzo"

    const-string v11, "Dzongkha"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "efi"

    const-string v11, "Efik"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "egy"

    const-string v11, "Egyptian (Ancient)"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "eka"

    const-string v11, "Ekajuk"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ell"

    const-string v11, "Greek, Modern (1453-)"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "elx"

    const-string v12, "Elamite"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "eng"

    const-string v12, "English"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "enm"

    const-string v12, "English, Middle (1100-1500)"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "epo"

    const-string v12, "Esperanto"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "est"

    const-string v12, "Estonian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "eus"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ewe"

    const-string v4, "Ewe"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ewo"

    const-string v4, "Ewondo"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fan"

    const-string v4, "Fang"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fao"

    const-string v4, "Faroese"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fas"

    const-string v4, "Persian"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fat"

    const-string v12, "Fanti"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fij"

    const-string v12, "Fijian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fin"

    const-string v12, "Finnish"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fiu"

    const-string v12, "Finno-Ugrian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fon"

    const-string v12, "Fon"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fra"

    const-string v12, "French"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "frm"

    const-string v12, "French, Middle (ca.1400-1800)"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fro"

    const-string v12, "French, Old (842-ca.1400)"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fry"

    const-string v12, "Frisian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ful"

    const-string v12, "Fulah"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "fur"

    const-string v12, "Friulian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gaa"

    const-string v12, "Ga"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gay"

    const-string v12, "Gayo"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gba"

    const-string v12, "Gbaya"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gem"

    const-string v12, "Germanic"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "geo"

    const-string v12, "Georgian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ger"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gez"

    const-string v7, "Geez"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gil"

    const-string v7, "Gilbertese"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gla"

    const-string v7, "Gaelic; Scottish Gaelic"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gle"

    const-string v7, "Irish"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "glg"

    const-string v7, "Gallegan"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "glv"

    const-string v7, "Manx"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gmh"

    const-string v7, "German, Middle High (ca.1050-1500)"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "goh"

    const-string v7, "German, Old High (ca.750-1050)"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gon"

    const-string v7, "Gondi"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gor"

    const-string v7, "Gorontalo"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "got"

    const-string v7, "Gothic"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "grb"

    const-string v7, "Grebo"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "grc"

    const-string v7, "Greek, Ancient (to 1453)"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gre"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "grn"

    const-string v7, "Guarani"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "guj"

    const-string v7, "Gujarati"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "gwi"

    const-string v7, "Gwich\u00b4in"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hai"

    const-string v7, "Haida"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hau"

    const-string v7, "Hausa"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "haw"

    const-string v7, "Hawaiian"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "heb"

    const-string v7, "Hebrew"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "her"

    const-string v7, "Herero"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hil"

    const-string v7, "Hiligaynon"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "him"

    const-string v7, "Himachali"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hin"

    const-string v7, "Hindi"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hit"

    const-string v7, "Hittite"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hmn"

    const-string v7, "Hmong"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hmo"

    const-string v7, "Hiri Motu"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hrv"

    const-string v7, "Croatian"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hun"

    const-string v11, "Hungarian"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hup"

    const-string v11, "Hupa"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "hye"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "iba"

    const-string v3, "Iban"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ibo"

    const-string v3, "Igbo"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ice"

    const-string v3, "Icelandic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ido"

    const-string v11, "Ido"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ijo"

    const-string v11, "Ijo"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "iku"

    const-string v11, "Inuktitut"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ile"

    const-string v11, "Interlingue"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ilo"

    const-string v11, "Iloko"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ina"

    const-string v11, "Interlingua"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "inc"

    const-string v11, "Indic"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ind"

    const-string v11, "Indonesian"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ine"

    const-string v11, "Indo-European"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ipk"

    const-string v11, "Inupiaq"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ira"

    const-string v11, "Iranian (Other)"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "iro"

    const-string v11, "Iroquoian languages"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "isl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ita"

    const-string v3, "Italian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "jav"

    const-string v3, "Javanese"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "jpn"

    const-string v3, "Japanese"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "jpr"

    const-string v3, "Judeo-Persian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "jrb"

    const-string v3, "Judeo-Arabic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kaa"

    const-string v3, "Kara-Kalpak"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kab"

    const-string v3, "Kabyle"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kac"

    const-string v3, "Kachin"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kal"

    const-string v3, "Kalaallisut"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kam"

    const-string v3, "Kamba"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kan"

    const-string v3, "Kannada"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kar"

    const-string v3, "Karen"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kas"

    const-string v3, "Kashmiri"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kat"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kau"

    const-string v3, "Kanuri"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kaw"

    const-string v3, "Kawi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kaz"

    const-string v3, "Kazakh"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kha"

    const-string v3, "Khasi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "khi"

    const-string v3, "Khoisan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "khm"

    const-string v3, "Khmer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kho"

    const-string v3, "Khotanese"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kik"

    const-string v3, "Kikuyu; Gikuyu"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kin"

    const-string v3, "Kinyarwanda"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kir"

    const-string v3, "Kirghiz"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kmb"

    const-string v3, "Kimbundu"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kok"

    const-string v3, "Konkani"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kom"

    const-string v3, "Komi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kon"

    const-string v3, "Kongo"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kor"

    const-string v3, "Korean"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kos"

    const-string v3, "Kosraean"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kpe"

    const-string v3, "Kpelle"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kro"

    const-string v3, "Kru"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kru"

    const-string v3, "Kurukh"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kua"

    const-string v3, "Kuanyama; Kwanyama"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kum"

    const-string v3, "Kumyk"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kur"

    const-string v3, "Kurdish"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "kut"

    const-string v3, "Kutenai"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lad"

    const-string v3, "Ladino"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lah"

    const-string v3, "Lahnda"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lam"

    const-string v3, "Lamba"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lao"

    const-string v3, "Lao"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lat"

    const-string v3, "Latin"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lav"

    const-string v3, "Latvian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lez"

    const-string v3, "Lezghian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lin"

    const-string v3, "Lingala"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lit"

    const-string v3, "Lithuanian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lol"

    const-string v3, "Mongo"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "loz"

    const-string v3, "Lozi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ltz"

    const-string v3, "Luxembourgish; Letzeburgesch"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lua"

    const-string v3, "Luba-Lulua"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lub"

    const-string v3, "Luba-Katanga"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lug"

    const-string v3, "Ganda"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lui"

    const-string v3, "Luiseno"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lun"

    const-string v3, "Lunda"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "luo"

    const-string v3, "Luo (Kenya and Tanzania)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "lus"

    const-string v3, "lushai"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mac"

    const-string v3, "Macedonian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mad"

    const-string v11, "Madurese"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mag"

    const-string v11, "Magahi"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mah"

    const-string v11, "Marshallese"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mai"

    const-string v11, "Maithili"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mak"

    const-string v11, "Makasar"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mal"

    const-string v11, "Malayalam"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "man"

    const-string v11, "Mandingo"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mao"

    const-string v11, "Maori"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "map"

    const-string v12, "Austronesian"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mar"

    const-string v12, "Marathi"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mas"

    const-string v12, "Masai"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "may"

    const-string v12, "Malay"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mdr"

    const-string v13, "Mandar"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "men"

    const-string v13, "Mende"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mga"

    const-string v13, "Irish, Middle (900-1200)"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mic"

    const-string v13, "Micmac"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "min"

    const-string v13, "Minangkabau"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mis"

    const-string v13, "Miscellaneous languages"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mkd"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mkh"

    const-string v3, "Mon-Khmer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mlg"

    const-string v3, "Malagasy"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mlt"

    const-string v3, "Maltese"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mnc"

    const-string v3, "Manchu"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mni"

    const-string v3, "Manipuri"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mno"

    const-string v3, "Manobo languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "moh"

    const-string v3, "Mohawk"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mol"

    const-string v3, "Moldavian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mon"

    const-string v3, "Mongolian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mos"

    const-string v3, "Mossi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mri"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "msa"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mul"

    const-string v3, "Multiple languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mun"

    const-string v3, "Munda languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mus"

    const-string v3, "Creek"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mwr"

    const-string v3, "Marwari"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "mya"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "myn"

    const-string v3, "Mayan languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nah"

    const-string v3, "Nahuatl"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nai"

    const-string v3, "North American Indian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nau"

    const-string v3, "Nauru"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nav"

    const-string v3, "Navajo; Navaho"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nbl"

    const-string v3, "South Ndebele"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nde"

    const-string v3, "North Ndebele"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ndo"

    const-string v3, "Ndonga"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nds"

    const-string v3, "Low German; Low Saxon"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nep"

    const-string v3, "Nepali"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "new"

    const-string v3, "Newari"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nia"

    const-string v3, "Nias"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nic"

    const-string v3, "Niger-Kordofanian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "niu"

    const-string v3, "Niuean"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nld"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nno"

    const-string v3, "Norwegian Nynorsk"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nob"

    const-string v3, "Norwegian Bokm\u00e5l"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "non"

    const-string v3, "Norse, Old"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nor"

    const-string v3, "Norwegian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nso"

    const-string v3, "Sotho, Northern"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nub"

    const-string v3, "Nubian languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nya"

    const-string v3, "Chichewa; Chewa; Nyanja"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nym"

    const-string v3, "Nyamwezi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nyn"

    const-string v3, "Nyankole"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nyo"

    const-string v3, "Nyoro"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "nzi"

    const-string v3, "Nzima"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "oci"

    const-string v3, "Occitan (post 1500); Proven\u00e7al"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "oji"

    const-string v3, "Ojibwa"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ori"

    const-string v3, "Oriya"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "orm"

    const-string v3, "Oromo"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "osa"

    const-string v3, "Osage"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "oss"

    const-string v3, "Ossetian; Ossetic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ota"

    const-string v3, "Turkish, Ottoman (1500-1928)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "oto"

    const-string v3, "Otomian languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "paa"

    const-string v3, "Papuan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pag"

    const-string v3, "Pangasinan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pal"

    const-string v3, "Pahlavi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pam"

    const-string v3, "Pampanga"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pan"

    const-string v3, "Panjabi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pap"

    const-string v3, "Papiamento"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pau"

    const-string v3, "Palauan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "peo"

    const-string v3, "Persian, Old (ca.600-400 B.C.)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "per"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "phi"

    const-string v3, "Philippine"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "phn"

    const-string v3, "Phoenician"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pli"

    const-string v3, "Pali"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pol"

    const-string v3, "Polish"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pon"

    const-string v3, "Pohnpeian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "por"

    const-string v3, "Portuguese"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pra"

    const-string v3, "Prakrit languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pro"

    const-string v3, "Proven\u00e7al, Old (to 1500)"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "pus"

    const-string v3, "Pushto"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "que"

    const-string v3, "Quechua"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "raj"

    const-string v3, "Rajasthani"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "rap"

    const-string v3, "Rapanui"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "rar"

    const-string v3, "Rarotongan"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "roa"

    const-string v3, "Romance"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "roh"

    const-string v3, "Raeto-Romance"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "rom"

    const-string v3, "Romany"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ron"

    const-string v3, "Romanian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "rum"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "run"

    const-string v3, "Rundi"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "rus"

    const-string v3, "Russian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sad"

    const-string v3, "Sandawe"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sag"

    const-string v3, "Sango"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sah"

    const-string v3, "Yakut"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sai"

    const-string v3, "South American Indian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sal"

    const-string v3, "Salishan languages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sam"

    const-string v3, "Samaritan Aramaic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "san"

    const-string v3, "Sanskrit"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sas"

    const-string v3, "Sasak"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sat"

    const-string v3, "Santali"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "scc"

    const-string v3, "Serbian"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sco"

    const-string v4, "Scots"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "scr"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sel"

    const-string v4, "Selkup"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sem"

    const-string v4, "Semitic"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sga"

    const-string v4, "Irish, Old (to 900)"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sgn"

    const-string v4, "Sign languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "shn"

    const-string v4, "Shan"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sid"

    const-string v4, "Sidamo"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sin"

    const-string v4, "Sinhales"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sio"

    const-string v4, "Siouan languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sit"

    const-string v4, "Sino-Tibetan"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sla"

    const-string v4, "Slavic"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "slk"

    const-string v4, "Slovak"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "slo"

    const-string v4, "Slovak"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "slv"

    const-string v4, "Slovenian"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sma"

    const-string v4, "Southern Sami"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sme"

    const-string v4, "Northern Sami"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "smi"

    const-string v4, "Sami languages"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "smj"

    const-string v4, "Lule Sami"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "smn"

    const-string v4, "Inari Sami"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "smo"

    const-string v4, "Samoan"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sms"

    const-string v4, "Skolt Sami"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sna"

    const-string v4, "Shona"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "snd"

    const-string v4, "Sindhi"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "snk"

    const-string v4, "Soninke"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sog"

    const-string v4, "Sogdian"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "som"

    const-string v4, "Somali"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "son"

    const-string v4, "Songhai"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sot"

    const-string v4, "Sotho, Southern"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "spa"

    const-string v4, "Spanish; Castilia"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sqi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "srd"

    const-string v2, "Sardinian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "srp"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "srr"

    const-string v2, "Serer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ssa"

    const-string v2, "Nilo-Saharan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sus"

    const-string v2, "Susu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "sux"

    const-string v2, "Sumerian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "swa"

    const-string v2, "Swahili"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "swe"

    const-string v2, "Swedish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "syr"

    const-string v2, "Syriac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tah"

    const-string v2, "Tahitian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tai"

    const-string v2, "Tai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tam"

    const-string v2, "Tamil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tat"

    const-string v2, "Tatar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tel"

    const-string v2, "Telugu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tem"

    const-string v2, "Timne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ter"

    const-string v2, "Tereno"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tet"

    const-string v2, "Tetum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tgk"

    const-string v2, "Tajik"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tgl"

    const-string v2, "Tagalog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tha"

    const-string v2, "Thai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tib"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tig"

    const-string v2, "Tigre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tir"

    const-string v2, "Tigrinya"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tiv"

    const-string v2, "Tiv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tkl"

    const-string v2, "Tokelau"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tli"

    const-string v2, "Tlingit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tmh"

    const-string v2, "Tamashek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tog"

    const-string v2, "Tonga (Nyasa)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ton"

    const-string v2, "Tonga (Tonga Islands)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tpi"

    const-string v2, "Tok Pisin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tsi"

    const-string v2, "Tsimshian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tsn"

    const-string v2, "Tswana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tso"

    const-string v2, "Tsonga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tuk"

    const-string v2, "Turkmen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tum"

    const-string v2, "Tumbuka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tup"

    const-string v2, "Tupi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tur"

    const-string v2, "Turkish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tut"

    const-string v2, "Altaic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tvl"

    const-string v2, "Tuvalu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "twi"

    const-string v2, "Twi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "tyv"

    const-string v2, "Tuvinian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "uga"

    const-string v2, "Ugaritic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "uig"

    const-string v2, "Uighur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ukr"

    const-string v2, "Ukrainian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "umb"

    const-string v2, "Umbundu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "und"

    const-string v2, "Undetermined"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "urd"

    const-string v2, "Urdu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "uzb"

    const-string v2, "Uzbek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "vai"

    const-string v2, "Vai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ven"

    const-string v2, "Venda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "vie"

    const-string v2, "Vietnamese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "vol"

    const-string v2, "Volap\u00fck"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "vot"

    const-string v2, "Votic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wak"

    const-string v2, "Wakashan languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wal"

    const-string v2, "Walamo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "war"

    const-string v2, "Waray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "was"

    const-string v2, "Washo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wel"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wen"

    const-string v2, "Sorbian languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wln"

    const-string v2, "Walloon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "wol"

    const-string v2, "Wolof"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "xho"

    const-string v2, "Xhosa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "yao"

    const-string v2, "Yao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "yap"

    const-string v2, "Yapese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "yid"

    const-string v2, "Yiddish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "yor"

    const-string v2, "Yoruba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "ypk"

    const-string v2, "Yupik languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zap"

    const-string v2, "Zapotec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zen"

    const-string v2, "Zenaga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zha"

    const-string v2, "Zhuang; Chuang"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zho"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "znd"

    const-string v2, "Zande"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zul"

    const-string v2, "Zulu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "zun"

    const-string v2, "Zuni"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "\u0000\u0000\u0000"

    const-string v2, "Winamp Format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    const-string v1, "XXX"

    const-string v2, "Media Monkey Format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractStringStringValuePair;->createMaps()V

    return-void
.end method

.method public static getInstanceOf()Lcom/transsion/audiotagger/tag/reference/Languages;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/Languages;->languageTypes:Lcom/transsion/audiotagger/tag/reference/Languages;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Languages;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/reference/Languages;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Languages;->languageTypes:Lcom/transsion/audiotagger/tag/reference/Languages;

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/reference/Languages;->languageTypes:Lcom/transsion/audiotagger/tag/reference/Languages;

    return-object v0
.end method
