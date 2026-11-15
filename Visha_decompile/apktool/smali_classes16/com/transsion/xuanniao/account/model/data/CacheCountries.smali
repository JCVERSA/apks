.class public Lcom/transsion/xuanniao/account/model/data/CacheCountries;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static countriesData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/CountryData$Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 203

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v8, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->AF:I

    const-string v5, "93"

    const-string v6, "412"

    const-string v2, "AF"

    const-string v3, "Afghanistan"

    const-string v4, "Afghanistan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v10, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v9, v10

    sget v16, Lcom/transsion/xuanniao/account/R$string;->AL:I

    const-string v14, "355"

    const-string v15, "276"

    const-string v11, "AL"

    const-string v12, "Albania"

    const-string v13, "Albania"

    invoke-direct/range {v10 .. v16}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v10, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->DZ:I

    const-string v5, "213"

    const-string v6, "603"

    const-string v2, "DZ"

    const-string v3, "Algeria"

    const-string v4, "Algeria"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v11, v12

    sget v18, Lcom/transsion/xuanniao/account/R$string;->AD:I

    const-string v16, "376"

    const-string v17, "213"

    const-string v13, "AD"

    const-string v14, "Andorra"

    const-string v15, "Andorra"

    invoke-direct/range {v12 .. v18}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v12, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->AO:I

    const-string v5, "244"

    const-string v6, "631"

    const-string v2, "AO"

    const-string v3, "Angola"

    const-string v4, "Angola"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v13, v14

    sget v20, Lcom/transsion/xuanniao/account/R$string;->AG:I

    const-string v18, "1268"

    const-string v19, "344"

    const-string v15, "AG"

    const-string v16, "Antigua and Barbuda"

    const-string v17, "Antigua and Barbuda"

    invoke-direct/range {v14 .. v20}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object v14, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->AR:I

    const-string v5, "54"

    const-string v6, "722"

    const-string v2, "AR"

    const-string v3, "Argentina"

    const-string v4, "Argentina"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v16, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v15, v16

    sget v22, Lcom/transsion/xuanniao/account/R$string;->AM:I

    const-string v20, "374"

    const-string v21, "283"

    const-string v17, "AM"

    const-string v18, "Armenia"

    const-string v19, "Armenia"

    invoke-direct/range {v16 .. v22}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v16, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->AU:I

    const-string v5, "61"

    const-string v6, "505"

    const-string v2, "AU"

    const-string v3, "Australia"

    const-string v4, "Australia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v18, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v17, v18

    sget v24, Lcom/transsion/xuanniao/account/R$string;->AT:I

    const-string v22, "43"

    const-string v23, "232"

    const-string v19, "AT"

    const-string v20, "Austria"

    const-string v21, "Austria"

    invoke-direct/range {v18 .. v24}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v18, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->AZ:I

    const-string v5, "994"

    const-string v6, "400"

    const-string v2, "AZ"

    const-string v3, "Azerbaijan"

    const-string v4, "Azerbaijan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v20, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v19, v20

    sget v26, Lcom/transsion/xuanniao/account/R$string;->BS:I

    const-string v24, "1242"

    const-string v25, "364"

    const-string v21, "BS"

    const-string v22, "Bahamas"

    const-string v23, "Bahamas"

    invoke-direct/range {v20 .. v26}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v20, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BH:I

    const-string v5, "973"

    const-string v6, "426"

    const-string v2, "BH"

    const-string v3, "Bahrain"

    const-string v4, "Bahrain"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v22, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v21, v22

    sget v28, Lcom/transsion/xuanniao/account/R$string;->BD:I

    const-string v26, "880"

    const-string v27, "470"

    const-string v23, "BD"

    const-string v24, "Bangladesh"

    const-string v25, "Bangladesh"

    invoke-direct/range {v22 .. v28}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v22, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BB:I

    const-string v5, "1246"

    const-string v6, "342"

    const-string v2, "BB"

    const-string v3, "Barbados"

    const-string v4, "Barbados"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v24, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v23, v24

    sget v30, Lcom/transsion/xuanniao/account/R$string;->BY:I

    const-string v28, "375"

    const-string v29, "257"

    const-string v25, "BY"

    const-string v26, "Belarus/Byelorussia"

    const-string v27, "Belarus"

    invoke-direct/range {v24 .. v30}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v24, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BE:I

    const-string v5, "32"

    const-string v6, "206"

    const-string v2, "BE"

    const-string v3, "Belgium"

    const-string v4, "Belgium"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v26, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v25, v26

    sget v32, Lcom/transsion/xuanniao/account/R$string;->BZ:I

    const-string v30, "501"

    const-string v31, "702"

    const-string v27, "BZ"

    const-string v28, "Belize"

    const-string v29, "Belize"

    invoke-direct/range {v26 .. v32}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v26, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BJ:I

    const-string v5, "229"

    const-string v6, "616"

    const-string v2, "BJ"

    const-string v3, "Benin"

    const-string v4, "Benin"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v28, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v27, v28

    sget v34, Lcom/transsion/xuanniao/account/R$string;->BO:I

    const-string v32, "591"

    const-string v33, "736"

    const-string v29, "BO"

    const-string v30, "Bolivia"

    const-string v31, "Bolivia"

    invoke-direct/range {v28 .. v34}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v28, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BT:I

    const-string v5, "975"

    const-string v6, "402"

    const-string v2, "BT"

    const-string v3, "Bhutan"

    const-string v4, "Bhutan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v30, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v29, v30

    sget v36, Lcom/transsion/xuanniao/account/R$string;->BA:I

    const-string v34, "387"

    const-string v35, "218"

    const-string v31, "BA"

    const-string v32, "Bosnia and Herzegovina"

    const-string v33, "Bosnia and Herzegovina"

    invoke-direct/range {v30 .. v36}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v30, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BW:I

    const-string v5, "267"

    const-string v6, "652"

    const-string v2, "BW"

    const-string v3, "Botswana"

    const-string v4, "Botswana"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v32, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v31, v32

    sget v38, Lcom/transsion/xuanniao/account/R$string;->BR:I

    const-string v36, "55"

    const-string v37, "724"

    const-string v33, "BR"

    const-string v34, "Brazil"

    const-string v35, "Brazil"

    invoke-direct/range {v32 .. v38}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v32, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BN:I

    const-string v5, "673"

    const-string v6, "528"

    const-string v2, "BN"

    const-string v3, "Brunei darussalam"

    const-string v4, "Brunei Darussalam"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v34, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v33, v34

    sget v40, Lcom/transsion/xuanniao/account/R$string;->BG:I

    const-string v38, "359"

    const-string v39, "284"

    const-string v35, "BG"

    const-string v36, "Bulgaria"

    const-string v37, "Bulgaria"

    invoke-direct/range {v34 .. v40}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v34, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->BF:I

    const-string v5, "226"

    const-string v6, "613"

    const-string v2, "BF"

    const-string v3, "Burkina Faso"

    const-string v4, "Burkina Faso"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v36, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v35, v36

    sget v42, Lcom/transsion/xuanniao/account/R$string;->BI:I

    const-string v40, "257"

    const-string v41, "642"

    const-string v37, "BI"

    const-string v38, "Burundi"

    const-string v39, "Burundi"

    invoke-direct/range {v36 .. v42}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v36, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->KH:I

    const-string v5, "855"

    const-string v6, "456"

    const-string v2, "KH"

    const-string v3, "Cambodia"

    const-string v4, "Cambodia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v38, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v37, v38

    sget v44, Lcom/transsion/xuanniao/account/R$string;->CM:I

    const-string v42, "237"

    const-string v43, "624"

    const-string v39, "CM"

    const-string v40, "Cameroon"

    const-string v41, "Cameroon"

    invoke-direct/range {v38 .. v44}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v38, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CA:I

    const-string v5, "1"

    const-string v6, "302"

    const-string v2, "CA"

    const-string v3, "Canada"

    const-string v4, "Canada"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v40, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v39, v40

    sget v46, Lcom/transsion/xuanniao/account/R$string;->CAR:I

    const-string v44, "236"

    const-string v45, "623"

    const-string v41, "CF"

    const-string v42, "Central African Rep."

    const-string v43, "Central African Republic"

    invoke-direct/range {v40 .. v46}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v40, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TD:I

    const-string v5, "235"

    const-string v6, "622"

    const-string v2, "TD"

    const-string v3, "Chad"

    const-string v4, "Chad"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v42, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v41, v42

    sget v48, Lcom/transsion/xuanniao/account/R$string;->CL:I

    const-string v46, "56"

    const-string v47, "730"

    const-string v43, "CL"

    const-string v44, "Chile"

    const-string v45, "Chile"

    invoke-direct/range {v42 .. v48}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v42, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CN:I

    const-string v5, "86"

    const-string v6, "460"

    const-string v2, "CN"

    const-string v3, "China"

    const-string v4, "China"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v44, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v43, v44

    sget v50, Lcom/transsion/xuanniao/account/R$string;->HK:I

    const-string v48, "852"

    const-string v49, "454"

    const-string v45, "HK"

    const-string v46, "Hong Kong"

    const-string v47, "Hong Kong"

    invoke-direct/range {v44 .. v50}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v44, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MO:I

    const-string v5, "853"

    const-string v6, "455"

    const-string v2, "MO"

    const-string v3, "Macao"

    const-string v4, "Macau"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v46, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v45, v46

    sget v52, Lcom/transsion/xuanniao/account/R$string;->TW:I

    const-string v50, "886"

    const-string v51, "466"

    const-string v47, "TW"

    const-string v48, "Taiwan/China"

    const-string v49, "Taiwan"

    invoke-direct/range {v46 .. v52}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v46, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CO:I

    const-string v5, "57"

    const-string v6, "732"

    const-string v2, "CO"

    const-string v3, "Colombia"

    const-string v4, "Colombia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v48, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v47, v48

    sget v54, Lcom/transsion/xuanniao/account/R$string;->CD:I

    const-string v52, "243"

    const-string v53, "630"

    const-string v49, "CD"

    const-string v50, "Congo(DRC)"

    const-string v51, "Congo (Kinshasa)"

    invoke-direct/range {v48 .. v54}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v48, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CG:I

    const-string v5, "242"

    const-string v6, "629"

    const-string v2, "CG"

    const-string v3, "Congo(Republic)"

    const-string v4, "Congo-Brazzaville"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v50, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v49, v50

    sget v56, Lcom/transsion/xuanniao/account/R$string;->CK:I

    const-string v54, "682"

    const-string v55, "548"

    const-string v51, "CK"

    const-string v52, "Cook Islands"

    const-string v53, "Cook Islands"

    invoke-direct/range {v50 .. v56}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v50, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CR:I

    const-string v5, "506"

    const-string v6, "712"

    const-string v2, "CR"

    const-string v3, "Costa Rica"

    const-string v4, "Costa Rica"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v52, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v51, v52

    sget v58, Lcom/transsion/xuanniao/account/R$string;->CI:I

    const-string v56, "225"

    const-string v57, "612"

    const-string v53, "CI"

    const-string v54, "Cote D lvoire"

    const-string v55, "Cote d\'Ivoire"

    invoke-direct/range {v52 .. v58}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v52, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->HR:I

    const-string v5, "385"

    const-string v6, "219"

    const-string v2, "HR"

    const-string v3, "Croatia"

    const-string v4, "Croatia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v54, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v53, v54

    sget v60, Lcom/transsion/xuanniao/account/R$string;->CU:I

    const-string v58, "53"

    const-string v59, "368"

    const-string v55, "CU"

    const-string v56, "Cuba"

    const-string v57, "Cuba"

    invoke-direct/range {v54 .. v60}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v54, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CY:I

    const-string v5, "357"

    const-string v6, "280"

    const-string v2, "CY"

    const-string v3, "Cyprus"

    const-string v4, "Cyprus"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v56, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v55, v56

    sget v62, Lcom/transsion/xuanniao/account/R$string;->CZ:I

    const-string v60, "420"

    const-string v61, "230"

    const-string v57, "CZ"

    const-string v58, "Czech Republic"

    const-string v59, "Czechia"

    invoke-direct/range {v56 .. v62}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v56, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->KP:I

    const-string v5, "850"

    const-string v6, "467"

    const-string v2, "KP"

    const-string v3, "Korea Democratic Rep."

    const-string v4, "Democratic People\'s Republic of Korea"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v58, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v57, v58

    sget v64, Lcom/transsion/xuanniao/account/R$string;->DK:I

    const-string v62, "45"

    const-string v63, "238"

    const-string v59, "DK"

    const-string v60, "Denmark"

    const-string v61, "Denmark"

    invoke-direct/range {v58 .. v64}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v58, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->DJ:I

    const-string v5, "253"

    const-string v6, "638"

    const-string v2, "DJ"

    const-string v3, "Djibouti"

    const-string v4, "Djibouti"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v60, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v59, v60

    sget v66, Lcom/transsion/xuanniao/account/R$string;->DM:I

    const-string v64, "1767"

    const-string v65, "366"

    const-string v61, "DM"

    const-string v62, "Dominica"

    const-string v63, "Dominica"

    invoke-direct/range {v60 .. v66}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v60, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->DO:I

    const-string v5, "1809"

    const-string v6, "370"

    const-string v2, "DO"

    const-string v3, "Dominican Rep."

    const-string v4, "Dominican Republic"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v62, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v61, v62

    sget v68, Lcom/transsion/xuanniao/account/R$string;->EC:I

    const-string v66, "593"

    const-string v67, "740"

    const-string v63, "EC"

    const-string v64, "Ecuador"

    const-string v65, "Ecuador"

    invoke-direct/range {v62 .. v68}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v62, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->EG:I

    const-string v5, "20"

    const-string v6, "602"

    const-string v2, "EG"

    const-string v3, "Egypt"

    const-string v4, "Egypt"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v64, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v63, v64

    sget v70, Lcom/transsion/xuanniao/account/R$string;->SV:I

    const-string v68, "503"

    const-string v69, "706"

    const-string v65, "SV"

    const-string v66, "El Salvador"

    const-string v67, "El Salvador"

    invoke-direct/range {v64 .. v70}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v64, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GQ:I

    const-string v5, "240"

    const-string v6, "627"

    const-string v2, "GQ"

    const-string v3, "Equatorial Guinea"

    const-string v4, "Equatorial Guinea"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v66, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v65, v66

    sget v72, Lcom/transsion/xuanniao/account/R$string;->ER:I

    const-string v70, "291"

    const-string v71, "657"

    const-string v67, "ER"

    const-string v68, "Eritrea"

    const-string v69, "Eritrea"

    invoke-direct/range {v66 .. v72}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v66, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->EE:I

    const-string v5, "372"

    const-string v6, "248"

    const-string v2, "EE"

    const-string v3, "Estonia"

    const-string v4, "Estonia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v68, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v67, v68

    sget v74, Lcom/transsion/xuanniao/account/R$string;->ET:I

    const-string v72, "251"

    const-string v73, "636"

    const-string v69, "ET"

    const-string v70, "Ethiopia"

    const-string v71, "Ethiopia"

    invoke-direct/range {v68 .. v74}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v68, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->FJ:I

    const-string v5, "679"

    const-string v6, "542"

    const-string v2, "FJ"

    const-string v3, "Fiji"

    const-string v4, "Fiji"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v70, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v69, v70

    sget v76, Lcom/transsion/xuanniao/account/R$string;->FI:I

    const-string v74, "358"

    const-string v75, "244"

    const-string v71, "FI"

    const-string v72, "Finland"

    const-string v73, "Finland"

    invoke-direct/range {v70 .. v76}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v70, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->FR:I

    const-string v5, "33"

    const-string v6, "208"

    const-string v2, "FR"

    const-string v3, "France"

    const-string v4, "France"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v72, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v71, v72

    sget v78, Lcom/transsion/xuanniao/account/R$string;->FG:I

    const-string v76, "594"

    const-string v77, "742"

    const-string v73, "FG"

    const-string v74, "French Guiana"

    const-string v75, "French Guiana"

    invoke-direct/range {v72 .. v78}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v72, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GA:I

    const-string v5, "241"

    const-string v6, "628"

    const-string v2, "GA"

    const-string v3, "Gabon"

    const-string v4, "Gabon"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v74, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v73, v74

    sget v80, Lcom/transsion/xuanniao/account/R$string;->GM:I

    const-string v78, "220"

    const-string v79, "607"

    const-string v75, "GM"

    const-string v76, "Gambia"

    const-string v77, "Gambia"

    invoke-direct/range {v74 .. v80}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v74, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GE:I

    const-string v5, "995"

    const-string v6, "282"

    const-string v2, "GE"

    const-string v3, "Georgia"

    const-string v4, "Georgia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v76, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v75, v76

    sget v82, Lcom/transsion/xuanniao/account/R$string;->DE:I

    const-string v80, "49"

    const-string v81, "262"

    const-string v77, "DE"

    const-string v78, "Germany"

    const-string v79, "Germany"

    invoke-direct/range {v76 .. v82}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v76, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GH:I

    const-string v5, "233"

    const-string v6, "620"

    const-string v2, "GH"

    const-string v3, "Ghana"

    const-string v4, "Ghana"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v78, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v77, v78

    sget v84, Lcom/transsion/xuanniao/account/R$string;->GI:I

    const-string v82, "350"

    const-string v83, "266"

    const-string v79, "GI"

    const-string v80, "Gibraltar"

    const-string v81, "Gibraltar"

    invoke-direct/range {v78 .. v84}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v78, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GR:I

    const-string v5, "30"

    const-string v6, "202"

    const-string v2, "GR"

    const-string v3, "Greece"

    const-string v4, "Greece"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v80, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v79, v80

    sget v86, Lcom/transsion/xuanniao/account/R$string;->GD:I

    const-string v84, "1809"

    const-string v85, "352"

    const-string v81, "GD"

    const-string v82, "Grenada"

    const-string v83, "Grenada"

    invoke-direct/range {v80 .. v86}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v80, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GU:I

    const-string v5, "1671"

    const-string v6, "535"

    const-string v2, "GU"

    const-string v3, "Guam"

    const-string v4, "Guam"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v82, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v81, v82

    sget v88, Lcom/transsion/xuanniao/account/R$string;->GT:I

    const-string v86, "502"

    const-string v87, "704"

    const-string v83, "GT"

    const-string v84, "Guatemala"

    const-string v85, "Guatemala"

    invoke-direct/range {v82 .. v88}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v82, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GN:I

    const-string v5, "224"

    const-string v6, "611"

    const-string v2, "GN"

    const-string v3, "Guinea"

    const-string v4, "Guinea"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v84, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v83, v84

    sget v90, Lcom/transsion/xuanniao/account/R$string;->GW:I

    const-string v88, "245"

    const-string v89, "632"

    const-string v85, "GW"

    const-string v86, "Guinea-Bissau"

    const-string v87, "Guinea-Bissau"

    invoke-direct/range {v84 .. v90}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v84, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GY:I

    const-string v5, "592"

    const-string v6, "738"

    const-string v2, "GY"

    const-string v3, "Guyana"

    const-string v4, "Guyana"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v86, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v85, v86

    sget v92, Lcom/transsion/xuanniao/account/R$string;->HT:I

    const-string v90, "509"

    const-string v91, "372"

    const-string v87, "HT"

    const-string v88, "Haiti"

    const-string v89, "Haiti"

    invoke-direct/range {v86 .. v92}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v86, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->HN:I

    const-string v5, "504"

    const-string v6, "708"

    const-string v2, "HN"

    const-string v3, "Honduras"

    const-string v4, "Honduras"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v88, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v87, v88

    sget v94, Lcom/transsion/xuanniao/account/R$string;->HU:I

    const-string v92, "36"

    const-string v93, "216"

    const-string v89, "HU"

    const-string v90, "Hungary"

    const-string v91, "Hungary"

    invoke-direct/range {v88 .. v94}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v88, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->IS:I

    const-string v5, "354"

    const-string v6, "274"

    const-string v2, "IS"

    const-string v3, "Iceland"

    const-string v4, "Iceland"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v90, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v89, v90

    sget v96, Lcom/transsion/xuanniao/account/R$string;->IN:I

    const-string v94, "91"

    const-string v95, "404"

    const-string v91, "IN"

    const-string v92, "India"

    const-string v93, "India"

    invoke-direct/range {v90 .. v96}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v90, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->ID:I

    const-string v5, "62"

    const-string v6, "510"

    const-string v2, "ID"

    const-string v3, "Indonesia"

    const-string v4, "Indonesia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v92, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v91, v92

    sget v98, Lcom/transsion/xuanniao/account/R$string;->IR:I

    const-string v96, "98"

    const-string v97, "432"

    const-string v93, "IR"

    const-string v94, "Iran"

    const-string v95, "Iran"

    invoke-direct/range {v92 .. v98}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v92, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->IQ:I

    const-string v5, "964"

    const-string v6, "418"

    const-string v2, "IQ"

    const-string v3, "Iraq"

    const-string v4, "Iraq"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v94, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v93, v94

    sget v100, Lcom/transsion/xuanniao/account/R$string;->IE:I

    const-string v98, "353"

    const-string v99, "272"

    const-string v95, "IE"

    const-string v96, "Ireland"

    const-string v97, "Ireland"

    invoke-direct/range {v94 .. v100}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v94, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->IL:I

    const-string v5, "972"

    const-string v6, "000"

    const-string v2, "IL"

    const-string v3, "Israel"

    const-string v4, "Israel"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v96, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v95, v96

    sget v102, Lcom/transsion/xuanniao/account/R$string;->IT:I

    const-string v100, "39"

    const-string v101, "222"

    const-string v97, "IT"

    const-string v98, "Italy"

    const-string v99, "Italy"

    invoke-direct/range {v96 .. v102}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v96, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->JM:I

    const-string v5, "1876"

    const-string v6, "338"

    const-string v2, "JM"

    const-string v3, "Jamaica"

    const-string v4, "Jamaica"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v98, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v97, v98

    sget v104, Lcom/transsion/xuanniao/account/R$string;->JP:I

    const-string v102, "81"

    const-string v103, "440"

    const-string v99, "JP"

    const-string v100, "Japan"

    const-string v101, "Japan"

    invoke-direct/range {v98 .. v104}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v98, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->JO:I

    const-string v5, "962"

    const-string v6, "416"

    const-string v2, "JO"

    const-string v3, "Jordan"

    const-string v4, "Jordan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v100, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v99, v100

    sget v106, Lcom/transsion/xuanniao/account/R$string;->KZ:I

    const-string v104, "7"

    const-string v105, "401"

    const-string v101, "KZ"

    const-string v102, "Kazakhstan"

    const-string v103, "Kazakhstan"

    invoke-direct/range {v100 .. v106}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v100, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->KE:I

    const-string v5, "254"

    const-string v6, "639"

    const-string v2, "KE"

    const-string v3, "Kenya"

    const-string v4, "Kenya"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v102, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v101, v102

    sget v108, Lcom/transsion/xuanniao/account/R$string;->KR:I

    const-string v106, "82"

    const-string v107, "450"

    const-string v103, "KR"

    const-string v104, "Korea"

    const-string v105, "Korea"

    invoke-direct/range {v102 .. v108}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v102, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->KW:I

    const-string v5, "965"

    const-string v6, "419"

    const-string v2, "KW"

    const-string v3, "Kuwait"

    const-string v4, "Kuwait"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v104, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v103, v104

    sget v110, Lcom/transsion/xuanniao/account/R$string;->KG:I

    const-string v108, "996"

    const-string v109, "437"

    const-string v105, "KG"

    const-string v106, "Kyrgyzstan"

    const-string v107, "Kyrgyzstan"

    invoke-direct/range {v104 .. v110}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v104, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->LA:I

    const-string v5, "856"

    const-string v6, "457"

    const-string v2, "LA"

    const-string v3, "Lao People s Democratic Rep."

    const-string v4, "Laos"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v106, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v105, v106

    sget v112, Lcom/transsion/xuanniao/account/R$string;->LV:I

    const-string v110, "371"

    const-string v111, "247"

    const-string v107, "LV"

    const-string v108, "Latvia"

    const-string v109, "Latvia"

    invoke-direct/range {v106 .. v112}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v106, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->LB:I

    const-string v5, "961"

    const-string v6, "415"

    const-string v2, "LB"

    const-string v3, "Lebanon"

    const-string v4, "Lebanon"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v108, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v107, v108

    sget v114, Lcom/transsion/xuanniao/account/R$string;->LS:I

    const-string v112, "266"

    const-string v113, "651"

    const-string v109, "LS"

    const-string v110, "Lesotho"

    const-string v111, "Lesotho"

    invoke-direct/range {v108 .. v114}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v108, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->LR:I

    const-string v5, "231"

    const-string v6, "618"

    const-string v2, "LR"

    const-string v3, "Liberia"

    const-string v4, "Liberia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v110, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v109, v110

    sget v116, Lcom/transsion/xuanniao/account/R$string;->LY:I

    const-string v114, "218"

    const-string v115, "606"

    const-string v111, "LY"

    const-string v112, "Libya"

    const-string v113, "Libya"

    invoke-direct/range {v110 .. v116}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v110, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->LI:I

    const-string v5, "423"

    const-string v6, "295"

    const-string v2, "LI"

    const-string v3, "Liechtenstein"

    const-string v4, "Liechtenstein"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v112, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v111, v112

    sget v118, Lcom/transsion/xuanniao/account/R$string;->LT:I

    const-string v116, "370"

    const-string v117, "246"

    const-string v113, "LT"

    const-string v114, "Lithuania"

    const-string v115, "Lithuania"

    invoke-direct/range {v112 .. v118}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v112, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->LU:I

    const-string v5, "352"

    const-string v6, "270"

    const-string v2, "LU"

    const-string v3, "Luxembourg"

    const-string v4, "Luxembourg"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v114, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v113, v114

    sget v120, Lcom/transsion/xuanniao/account/R$string;->MG:I

    const-string v118, "261"

    const-string v119, "646"

    const-string v115, "MG"

    const-string v116, "Madagascar"

    const-string v117, "Madagascar"

    invoke-direct/range {v114 .. v120}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v114, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MW:I

    const-string v5, "265"

    const-string v6, "650"

    const-string v2, "MW"

    const-string v3, "Malawi"

    const-string v4, "Malawi"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v116, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v115, v116

    sget v122, Lcom/transsion/xuanniao/account/R$string;->MY:I

    const-string v120, "60"

    const-string v121, "502"

    const-string v117, "MY"

    const-string v118, "Malaysia"

    const-string v119, "Malaysia"

    invoke-direct/range {v116 .. v122}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v116, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MV:I

    const-string v5, "960"

    const-string v6, "472"

    const-string v2, "MV"

    const-string v3, "Maldives"

    const-string v4, "Maldives"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v118, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v117, v118

    sget v124, Lcom/transsion/xuanniao/account/R$string;->ML:I

    const-string v122, "223"

    const-string v123, "610"

    const-string v119, "ML"

    const-string v120, "Mali"

    const-string v121, "Mali"

    invoke-direct/range {v118 .. v124}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v118, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MT:I

    const-string v5, "356"

    const-string v6, "278"

    const-string v2, "MT"

    const-string v3, "Malta"

    const-string v4, "Malta"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v120, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v119, v120

    sget v126, Lcom/transsion/xuanniao/account/R$string;->MR:I

    const-string v124, "222"

    const-string v125, "609"

    const-string v121, "MR"

    const-string v122, "Mauritania"

    const-string v123, "Mauritania"

    invoke-direct/range {v120 .. v126}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v120, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MU:I

    const-string v5, "230"

    const-string v6, "617"

    const-string v2, "MU"

    const-string v3, "Mauritius"

    const-string v4, "Mauritius"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v122, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v121, v122

    sget v128, Lcom/transsion/xuanniao/account/R$string;->MX:I

    const-string v126, "52"

    const-string v127, "334"

    const-string v123, "MX"

    const-string v124, "Mexico"

    const-string v125, "Mexico"

    invoke-direct/range {v122 .. v128}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v122, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MD:I

    const-string v5, "373"

    const-string v6, "259"

    const-string v2, "MD"

    const-string v3, "Moldova"

    const-string v4, "Moldova"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v124, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v123, v124

    sget v130, Lcom/transsion/xuanniao/account/R$string;->MC:I

    const-string v128, "377"

    const-string v129, "212"

    const-string v125, "MC"

    const-string v126, "Monaco"

    const-string v127, "Monaco"

    invoke-direct/range {v124 .. v130}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v124, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MN:I

    const-string v5, "976"

    const-string v6, "428"

    const-string v2, "MN"

    const-string v3, "Mongolia"

    const-string v4, "Mongolia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v126, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v125, v126

    sget v132, Lcom/transsion/xuanniao/account/R$string;->ME:I

    const-string v130, "382"

    const-string v131, "297"

    const-string v127, "ME"

    const-string v128, "Montenegro"

    const-string v129, "Montenegro"

    invoke-direct/range {v126 .. v132}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v126, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MS:I

    const-string v5, "1664"

    const-string v6, "354"

    const-string v2, "MS"

    const-string v3, "Montserrat"

    const-string v4, "Montserrat"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v128, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v127, v128

    sget v134, Lcom/transsion/xuanniao/account/R$string;->MA:I

    const-string v132, "212"

    const-string v133, "604"

    const-string v129, "MA"

    const-string v130, "Morocco"

    const-string v131, "Morocco"

    invoke-direct/range {v128 .. v134}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v128, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->MZ:I

    const-string v5, "258"

    const-string v6, "643"

    const-string v2, "MZ"

    const-string v3, "Mozambique"

    const-string v4, "Mozambique"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v130, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v129, v130

    sget v136, Lcom/transsion/xuanniao/account/R$string;->MM:I

    const-string v134, "95"

    const-string v135, "414"

    const-string v131, "MM"

    const-string v132, "Myanmar"

    const-string v133, "Myanmar"

    invoke-direct/range {v130 .. v136}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v130, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->NA:I

    const-string v5, "264"

    const-string v6, "649"

    const-string v2, "NA"

    const-string v3, "Namibia"

    const-string v4, "Namibia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v132, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v131, v132

    sget v138, Lcom/transsion/xuanniao/account/R$string;->NR:I

    const-string v136, "674"

    const-string v137, "536"

    const-string v133, "NR"

    const-string v134, "Nauru"

    const-string v135, "Nauru"

    invoke-direct/range {v132 .. v138}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v132, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->NP:I

    const-string v5, "977"

    const-string v6, "429"

    const-string v2, "NP"

    const-string v3, "Nepal"

    const-string v4, "Nepal"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v134, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v133, v134

    sget v140, Lcom/transsion/xuanniao/account/R$string;->NL:I

    const-string v138, "31"

    const-string v139, "204"

    const-string v135, "NL"

    const-string v136, "Netherlands"

    const-string v137, "Netherlands"

    invoke-direct/range {v134 .. v140}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v134, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->NZ:I

    const-string v5, "64"

    const-string v6, "530"

    const-string v2, "NZ"

    const-string v3, "New Zealand"

    const-string v4, "New Zealand"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v136, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v135, v136

    sget v142, Lcom/transsion/xuanniao/account/R$string;->NI:I

    const-string v140, "505"

    const-string v141, "710"

    const-string v137, "NI"

    const-string v138, "New Zealand"

    const-string v139, "Nicaragua"

    invoke-direct/range {v136 .. v142}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v136, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->NE:I

    const-string v5, "227"

    const-string v6, "614"

    const-string v2, "NE"

    const-string v3, "Niger"

    const-string v4, "Niger"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v138, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v137, v138

    sget v144, Lcom/transsion/xuanniao/account/R$string;->NG:I

    const-string v142, "234"

    const-string v143, "621"

    const-string v139, "NG"

    const-string v140, "Nigeria"

    const-string v141, "Nigeria"

    invoke-direct/range {v138 .. v144}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v138, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->NO:I

    const-string v5, "47"

    const-string v6, "242"

    const-string v2, "NO"

    const-string v3, "Norway"

    const-string v4, "Norway"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v140, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v139, v140

    sget v146, Lcom/transsion/xuanniao/account/R$string;->OM:I

    const-string v144, "968"

    const-string v145, "422"

    const-string v141, "OM"

    const-string v142, "Oman"

    const-string v143, "Oman"

    invoke-direct/range {v140 .. v146}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v140, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->PK:I

    const-string v5, "92"

    const-string v6, "410"

    const-string v2, "PK"

    const-string v3, "Pakistan"

    const-string v4, "Pakistan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v142, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v141, v142

    sget v148, Lcom/transsion/xuanniao/account/R$string;->PA:I

    const-string v146, "507"

    const-string v147, "714"

    const-string v143, "PA"

    const-string v144, "Panama"

    const-string v145, "Panama"

    invoke-direct/range {v142 .. v148}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v142, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->PG:I

    const-string v5, "675"

    const-string v6, "537"

    const-string v2, "PG"

    const-string v3, "Papua New Guinea"

    const-string v4, "Papua New Guinea"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v144, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v143, v144

    sget v150, Lcom/transsion/xuanniao/account/R$string;->PY:I

    const-string v148, "595"

    const-string v149, "744"

    const-string v145, "PY"

    const-string v146, "Paraguay"

    const-string v147, "Paraguay"

    invoke-direct/range {v144 .. v150}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v144, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->PE:I

    const-string v5, "51"

    const-string v6, "716"

    const-string v2, "PE"

    const-string v3, "Peru"

    const-string v4, "Peru"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v146, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v145, v146

    sget v152, Lcom/transsion/xuanniao/account/R$string;->PH:I

    const-string v150, "63"

    const-string v151, "515"

    const-string v147, "PH"

    const-string v148, "Philippines"

    const-string v149, "Philippines"

    invoke-direct/range {v146 .. v152}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v146, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->PL:I

    const-string v5, "48"

    const-string v6, "260"

    const-string v2, "PL"

    const-string v3, "Poland"

    const-string v4, "Poland"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v148, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v147, v148

    sget v154, Lcom/transsion/xuanniao/account/R$string;->PT:I

    const-string v152, "351"

    const-string v153, "268"

    const-string v149, "PT"

    const-string v150, "Portugal"

    const-string v151, "Portugal"

    invoke-direct/range {v148 .. v154}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v148, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->PR:I

    const-string v5, "1787"

    const-string v6, "330"

    const-string v2, "PR"

    const-string v3, "Puerto Rico"

    const-string v4, "Puerto Rico"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v150, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v149, v150

    sget v156, Lcom/transsion/xuanniao/account/R$string;->QA:I

    const-string v154, "974"

    const-string v155, "427"

    const-string v151, "QA"

    const-string v152, "Qatar"

    const-string v153, "Qatar"

    invoke-direct/range {v150 .. v156}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v150, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->RO:I

    const-string v5, "40"

    const-string v6, "226"

    const-string v2, "RO"

    const-string v3, "Romania"

    const-string v4, "Romania"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v152, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v151, v152

    sget v158, Lcom/transsion/xuanniao/account/R$string;->RU:I

    const-string v156, "7"

    const-string v157, "250"

    const-string v153, "RU"

    const-string v154, "Russian Federation"

    const-string v155, "Russian Federation"

    invoke-direct/range {v152 .. v158}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v152, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->RW:I

    const-string v5, "250"

    const-string v6, "635"

    const-string v2, "RW"

    const-string v3, "Rwanda"

    const-string v4, "Rwanda"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v154, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v153, v154

    sget v160, Lcom/transsion/xuanniao/account/R$string;->LC:I

    const-string v158, "1758"

    const-string v159, "358"

    const-string v155, "LC"

    const-string v156, "Saint Lucia"

    const-string v157, "Saint Lucia"

    invoke-direct/range {v154 .. v160}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v154, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SM:I

    const-string v5, "378"

    const-string v6, "292"

    const-string v2, "SM"

    const-string v3, "San Marino"

    const-string v4, "San Marino"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v156, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v155, v156

    sget v162, Lcom/transsion/xuanniao/account/R$string;->ST:I

    const-string v160, "239"

    const-string v161, "626"

    const-string v157, "ST"

    const-string v158, "Sao-Tome and Principe"

    const-string v159, "Sao Tome and Principe"

    invoke-direct/range {v156 .. v162}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v156, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SN:I

    const-string v5, "221"

    const-string v6, "608"

    const-string v2, "SN"

    const-string v3, "Senegal"

    const-string v4, "Senegal"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v158, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v157, v158

    sget v164, Lcom/transsion/xuanniao/account/R$string;->RS:I

    const-string v162, "381"

    const-string v163, "220"

    const-string v159, "RS"

    const-string v160, "Serbia"

    const-string v161, "Serbia"

    invoke-direct/range {v158 .. v164}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v158, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SC:I

    const-string v5, "248"

    const-string v6, "633"

    const-string v2, "SC"

    const-string v3, "Seychelles"

    const-string v4, "Seychelles"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v160, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v159, v160

    sget v166, Lcom/transsion/xuanniao/account/R$string;->SL:I

    const-string v164, "232"

    const-string v165, "619"

    const-string v161, "SL"

    const-string v162, "Sierra Leone"

    const-string v163, "Sierra Leone"

    invoke-direct/range {v160 .. v166}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v160, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SG:I

    const-string v5, "65"

    const-string v6, "525"

    const-string v2, "SG"

    const-string v3, "Singapore"

    const-string v4, "Singapore"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v162, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v161, v162

    sget v168, Lcom/transsion/xuanniao/account/R$string;->SK:I

    const-string v166, "421"

    const-string v167, "231"

    const-string v163, "SK"

    const-string v164, "Slovakia"

    const-string v165, "Slovak Republic"

    invoke-direct/range {v162 .. v168}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v162, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SI:I

    const-string v5, "386"

    const-string v6, "293"

    const-string v2, "SI"

    const-string v3, "Slovenia"

    const-string v4, "Slovenia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v164, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v163, v164

    sget v170, Lcom/transsion/xuanniao/account/R$string;->SB:I

    const-string v168, "677"

    const-string v169, "540"

    const-string v165, "SB"

    const-string v166, "Solomon Islands"

    const-string v167, "Solomon Islands"

    invoke-direct/range {v164 .. v170}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v164, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SO:I

    const-string v5, "252"

    const-string v6, "637"

    const-string v2, "SO"

    const-string v3, "Somalia"

    const-string v4, "Somalia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v166, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v165, v166

    sget v172, Lcom/transsion/xuanniao/account/R$string;->ZA:I

    const-string v170, "27"

    const-string v171, "655"

    const-string v167, "ZA"

    const-string v168, "South Africa"

    const-string v169, "South Africa"

    invoke-direct/range {v166 .. v172}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v166, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->ES:I

    const-string v5, "34"

    const-string v6, "214"

    const-string v2, "ES"

    const-string v3, "Spain"

    const-string v4, "Spain"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v168, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v167, v168

    sget v174, Lcom/transsion/xuanniao/account/R$string;->LK:I

    const-string v172, "94"

    const-string v173, "413"

    const-string v169, "LK"

    const-string v170, "Sri Lanka"

    const-string v171, "Sri Lanka"

    invoke-direct/range {v168 .. v174}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v168, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SD:I

    const-string v5, "249"

    const-string v6, "634"

    const-string v2, "SD"

    const-string v3, "Sudan"

    const-string v4, "Sudan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v170, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v169, v170

    sget v176, Lcom/transsion/xuanniao/account/R$string;->SR:I

    const-string v174, "597"

    const-string v175, "746"

    const-string v171, "SR"

    const-string v172, "Suriname"

    const-string v173, "Suriname"

    invoke-direct/range {v170 .. v176}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v170, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->SZ:I

    const-string v5, "268"

    const-string v6, "653"

    const-string v2, "SZ"

    const-string v3, "Swaziland"

    const-string v4, "Swaziland"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v172, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v171, v172

    sget v178, Lcom/transsion/xuanniao/account/R$string;->SE:I

    const-string v176, "46"

    const-string v177, "240"

    const-string v173, "SE"

    const-string v174, "Sweden"

    const-string v175, "Sweden"

    invoke-direct/range {v172 .. v178}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v172, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->CH:I

    const-string v5, "41"

    const-string v6, "228"

    const-string v2, "CH"

    const-string v3, "Switzerland"

    const-string v4, "Switzerland"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v174, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v173, v174

    sget v180, Lcom/transsion/xuanniao/account/R$string;->SY:I

    const-string v178, "963"

    const-string v179, "417"

    const-string v175, "SY"

    const-string v176, "Syria"

    const-string v177, "Syrian Arab Republic"

    invoke-direct/range {v174 .. v180}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v174, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TJ:I

    const-string v5, "992"

    const-string v6, "436"

    const-string v2, "TJ"

    const-string v3, "Tajikistan"

    const-string v4, "Tajikistan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v176, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v175, v176

    sget v182, Lcom/transsion/xuanniao/account/R$string;->TZ:I

    const-string v180, "255"

    const-string v181, "640"

    const-string v177, "TZ"

    const-string v178, "Tanzania"

    const-string v179, "Tanzania"

    invoke-direct/range {v176 .. v182}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v176, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TH:I

    const-string v5, "66"

    const-string v6, "520"

    const-string v2, "TH"

    const-string v3, "Thailand"

    const-string v4, "Thailand"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v178, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v177, v178

    sget v184, Lcom/transsion/xuanniao/account/R$string;->TG:I

    const-string v182, "228"

    const-string v183, "615"

    const-string v179, "TG"

    const-string v180, "Togo"

    const-string v181, "Togo"

    invoke-direct/range {v178 .. v184}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v178, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TO:I

    const-string v5, "676"

    const-string v6, "539"

    const-string v2, "TO"

    const-string v3, "Tonga"

    const-string v4, "Tonga"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v180, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v179, v180

    sget v186, Lcom/transsion/xuanniao/account/R$string;->TT:I

    const-string v184, "1868"

    const-string v185, "374"

    const-string v181, "TT"

    const-string v182, "Trinidad & Tobago"

    const-string v183, "Trinidad and Tobago"

    invoke-direct/range {v180 .. v186}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v180, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TN:I

    const-string v5, "216"

    const-string v6, "605"

    const-string v2, "TN"

    const-string v3, "Tunisia"

    const-string v4, "Tunisia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v182, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v181, v182

    sget v188, Lcom/transsion/xuanniao/account/R$string;->TR:I

    const-string v186, "90"

    const-string v187, "286"

    const-string v183, "TR"

    const-string v184, "Turkey"

    const-string v185, "Turkey"

    invoke-direct/range {v182 .. v188}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v182, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->TM:I

    const-string v5, "993"

    const-string v6, "438"

    const-string v2, "TM"

    const-string v3, "Turkmenistan"

    const-string v4, "Turkmenistan"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v184, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v183, v184

    sget v190, Lcom/transsion/xuanniao/account/R$string;->UG:I

    const-string v188, "256"

    const-string v189, "641"

    const-string v185, "UG"

    const-string v186, "Uganda"

    const-string v187, "Uganda"

    invoke-direct/range {v184 .. v190}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v184, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->UA:I

    const-string v5, "380"

    const-string v6, "255"

    const-string v2, "UA"

    const-string v3, "Ukraine"

    const-string v4, "Ukraine"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v186, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v185, v186

    sget v192, Lcom/transsion/xuanniao/account/R$string;->AE:I

    const-string v190, "971"

    const-string v191, "424"

    const-string v187, "AE"

    const-string v188, "United Arab Emirates"

    const-string v189, "United Arab Emirates"

    invoke-direct/range {v186 .. v192}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v186, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->GB:I

    const-string v5, "44"

    const-string v6, "234"

    const-string v2, "GB"

    const-string v3, "United Kingdom"

    const-string v4, "United Kingdom"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v188, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v187, v188

    sget v194, Lcom/transsion/xuanniao/account/R$string;->US:I

    const-string v192, "1"

    const-string v193, "310"

    const-string v189, "US"

    const-string v190, "United States"

    const-string v191, "United States of America"

    invoke-direct/range {v188 .. v194}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v188, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->UY:I

    const-string v5, "598"

    const-string v6, "748"

    const-string v2, "UY"

    const-string v3, "Uruguay"

    const-string v4, "Uruguay"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v190, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v189, v190

    sget v196, Lcom/transsion/xuanniao/account/R$string;->UZ:I

    const-string v194, "998"

    const-string v195, "434"

    const-string v191, "UZ"

    const-string v192, "Uzbekistan"

    const-string v193, "Uzbekistan"

    invoke-direct/range {v190 .. v196}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v190, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->VU:I

    const-string v5, "678"

    const-string v6, "541"

    const-string v2, "VU"

    const-string v3, "Vanuatu"

    const-string v4, "Vanuatu"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v192, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v191, v192

    sget v198, Lcom/transsion/xuanniao/account/R$string;->VE:I

    const-string v196, "58"

    const-string v197, "734"

    const-string v193, "VE"

    const-string v194, "Venezuela"

    const-string v195, "Venezuela"

    invoke-direct/range {v192 .. v198}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v192, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->VN:I

    const-string v5, "84"

    const-string v6, "452"

    const-string v2, "VN"

    const-string v3, "Vietnam"

    const-string v4, "Vietnam"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v194, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v193, v194

    sget v200, Lcom/transsion/xuanniao/account/R$string;->YE:I

    const-string v198, "967"

    const-string v199, "421"

    const-string v195, "YE"

    const-string v196, "Yemen"

    const-string v197, "Yemen"

    invoke-direct/range {v194 .. v200}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v194, v1

    sget v7, Lcom/transsion/xuanniao/account/R$string;->ZM:I

    const-string v5, "260"

    const-string v6, "645"

    const-string v2, "ZM"

    const-string v3, "Zambia"

    const-string v4, "Zambia"

    invoke-direct/range {v1 .. v7}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v196, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-object/from16 v195, v196

    sget v202, Lcom/transsion/xuanniao/account/R$string;->ZW:I

    const-string v200, "263"

    const-string v201, "648"

    const-string v197, "ZW"

    const-string v198, "Zimbabwe"

    const-string v199, "Zimbabwe"

    invoke-direct/range {v196 .. v202}, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    filled-new-array/range {v8 .. v195}, [Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/xuanniao/account/model/data/CacheCountries;->countriesData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
