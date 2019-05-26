module SynPUF

using DataDeps

URL_A = "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/"

SET_A = [URL_A * X * ".zip" for X in (
          "DE1_0_2008_Beneficiary_Summary_File_Sample_1",
          "DE1_0_2009_Beneficiary_Summary_File_Sample_1",
          "DE1_0_2010_Beneficiary_Summary_File_Sample_1",
          "DE1_0_2008_to_2010_Inpatient_Claims_Sample_1",
          "DE1_0_2008_to_2010_Outpatient_Claims_Sample_1")]

URL_B = "http://downloads.cms.gov/files/"

SET_B = [URL_B * X * ".zip" for X in (
          "DE1_0_2008_to_2010_Carrier_Claims_Sample_1A",
          "DE1_0_2008_to_2010_Carrier_Claims_Sample_1B",
          "DE1_0_2008_to_2010_Prescription_Drug_Events_Sample_1")]

FILES = vcat(SET_A, SET_B)

function SynPUF.register()
register(
  DataDep("synpuf_01",
          "CMS 2008-2010 Synthetic PUF; 1 of 20",
          [FILES],
          post_fetch_method = [file->run(`unzip $file`)]
         ))
end

end # module
