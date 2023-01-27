cmake_minimum_required(VERSION 3.20)

# Setup Project
PROJECT(Raven CXX)

# Find NetCDF
find_package(NetCDF REQUIRED)

# Create Cpp Executable
include_directories(Raven)
add_executable(Raven
  Abstraction.cpp
  Advection.cpp
  Advection.h
  Albedo.h
  Assimilate.cpp
  Baseflow.cpp
  CapillaryRise.cpp
  ChannelXSect.cpp
  ChannelXSect.h
  CommonFunctions.cpp
  ConstituentModel.cpp
  ControlStructures.cpp
  ControlStructures.h
  Convolution.cpp
  Convolution.h
  CropGrowth.cpp
  CropGrowth.h
  CustomOutput.cpp
  CustomOutput.h
  DDS.cpp
  Decay.cpp
  Decay.h
  DepressionProcesses.cpp
  DepressionProcesses.h
  Diagnostics.cpp
  Diagnostics.h
  Drain.cpp
  EnergyTransport.cpp
  EnergyTransport.h
  Evaporation.cpp
  Flush.cpp
  ForcingGrid.cpp
  ForcingGrid.h
  Forcings.cpp
  Forcings.h
  Gauge.cpp
  Gauge.h
  GlacierProcesses.cpp
  GlacierProcesses.h
  GlobalParams.cpp
  GlobalParams.h
  GreenAmpt.cpp
  GroundwaterModel.cpp
  GroundwaterModel.h
  GWRecharge.cpp
  GWRiverConnection.cpp
  GWRiverConnection.h
  GWSWProcessABC.cpp
  GWSWProcesses.h
  HeatConduction.cpp
  HeatConduction.h
  HRUGroups.cpp
  HydroProcessABC.cpp
  HydroProcessABC.h
  HydroUnits.cpp
  HydroUnits.h
  Infiltration.cpp
  Infiltration.h
  Interflow.cpp
  IrregularTimeSeries.cpp
  IrregularTimeSeries.h
  IsotopeTransport.cpp
  IsotopeTransport.h
  LandUseClass.cpp
  LatAdvection.cpp
  LatAdvection.h
  LatEquilibrate.cpp
  LateralExchangeABC.cpp
  LateralExchangeABC.h
  LatFlush.cpp
  MassLoading.cpp
  MassLoading.h
  MassRouting.cpp
  MFUSGpp.h
  Model.cpp
  Model.h
  ModelABC.h
  ModelEnsemble.cpp
  ModelEnsemble.h
  ModelForcingGrids.cpp
  ModelInitialize.cpp
  ModelParamCheck.cpp
  NetCDFReading.cpp
  OpenWaterEvap.cpp
  OpenWaterEvap.h
  OrographicCorrections.cpp
  ParseEnsembleFile.cpp
  ParseFEWSRunInfo.cpp
  ParseGWFile.cpp
  ParseHRUFile.cpp
  ParseInitialConditionFile.cpp
  ParseInput.cpp
  ParseLib.cpp
  ParseLib.h
  ParseLiveFile.cpp
  ParsePropertyFile.cpp
  ParseTimeSeriesFile.cpp
  PartitionPrecip.cpp
  Percolation.cpp
  PotentialMelt.cpp
  PrairieSnow.cpp
  PrairieSnow.h
  Precipitation.h
  ProcessGroup.cpp
  ProcessGroup.h
  Properties.h
  Radiation.cpp
  Radiation.h
  Raven.rc
  RavenIcon.ico
  RavenInclude.h
  RavenMain.cpp
  Recharge.cpp
  Reservoir.cpp
  Reservoir.h
  resource.h
  RiverReach.cpp
  RiverReach.h
  SnowAlbedo.cpp
  SnowBalance.cpp
  SnowMeltRefreeze.cpp
  SnowMovers.h
  SnowParams.cpp
  SnowTempEvolve.cpp
  SoilAndLandClasses.h
  SoilBalance.cpp
  SoilClass.cpp
  SoilEvaporation.cpp
  SoilParams.cpp
  SoilProfile.cpp
  SoilProfile.h
  SoilWaterMovers.h
  Solvers.cpp
  SparseMatrix.cpp
  SparseMatrix.h
  StageDischargeRelations.cpp
  StageDischargeRelations.h
  StandardOutput.cpp
  StateVariables.cpp
  StateVariables.h
  SubBasin.cpp
  SubBasin.h
  SubbasinGroups.cpp
  Sublimation.cpp
  SurfaceEnergyExchange.cpp
  SurfaceEnergyExchange.h
  TerrainClass.cpp
  TimeSeries.cpp
  TimeSeries.h
  TimeSeriesABC.cpp
  TimeSeriesABC.h
  Transformation.cpp
  TransientParam.cpp
  TransientParam.h
  Transport.cpp
  Transport.h
  UnitTesting.cpp
  UnitTesting.h
  UpdateForcings.cpp
  UTM_to_LatLong.cpp
  VegetationClass.cpp
  VegetationMovers.cpp
  VegetationMovers.h
  VegetationParams.cpp
)

target_link_libraries(Raven PRIVATE NetCDF)

source_group("Source Files" FILES 
  CommonFunctions.cpp
  UTM_to_LatLong.cpp
  StateVariables.cpp
  UnitTesting.cpp
  SparseMatrix.cpp
  EnergyTransport.cpp
  EnergyTransport.cpp
  EnergyTransport.cpp
  EnergyTransport.cpp
)
source_group("Source Files\\Hydrological Processes" FILES 
  HydroProcessABC.cpp
  PartitionPrecip.cpp
  Flush.cpp
  Convolution.cpp
  LatFlush.cpp
  LateralExchangeABC.cpp
  ProcessGroup.cpp
  Drain.cpp
  LatEquilibrate.cpp
)
source_group("Source Files\\Hydrological Processes\\Soil Water Processes" FILES 
  Baseflow.cpp
  Interflow.cpp
  Percolation.cpp
  SoilEvaporation.cpp
  CapillaryRise.cpp
  Infiltration.cpp
  GreenAmpt.cpp
  Recharge.cpp
  SoilBalance.cpp
)
source_group("Source Files\\Hydrological Processes\\Snow Water Processes" FILES 
  SnowBalance.cpp
  SnowMeltRefreeze.cpp
  Sublimation.cpp
  SnowAlbedo.cpp
  SnowTempEvolve.cpp
  PrairieSnow.cpp
)
source_group("Source Files\\Hydrological Processes\\Vegetation Processes" FILES 
  VegetationMovers.cpp
  CropGrowth.cpp
)
source_group("Source Files\\Hydrological Routines" FILES 
  SnowParams.cpp
  SoilParams.cpp
  VegetationParams.cpp
)
source_group("Source Files\\HRUs and Subbasins" FILES 
  HydroUnits.cpp
  SubBasin.cpp
  HRUGroups.cpp
  SubbasinGroups.cpp
)
source_group("Source Files\\Forcing Functions\\Gauge/Time Series/ForcingGrid" FILES 
  Gauge.cpp
  TimeSeries.cpp
  TimeSeriesABC.cpp
  IrregularTimeSeries.cpp
  ForcingGrid.cpp
  ModelForcingGrids.cpp
)
source_group("Source Files\\Profiles/XSects/Reservoirs" FILES 
  ChannelXSect.cpp
  SoilProfile.cpp
  Reservoir.cpp
  ControlStructures.cpp
  StageDischargeRelations.cpp
)
source_group("Source Files\\Forcing Functions" FILES 
  Evaporation.cpp
  Radiation.cpp
  UpdateForcings.cpp
  OrographicCorrections.cpp
  PotentialMelt.cpp
  Forcings.cpp
)
source_group("Source Files\\_Driver" FILES 
  Model.cpp
  RavenMain.cpp
  Solvers.cpp
  ModelInitialize.cpp
  Assimilate.cpp
  ModelParamCheck.cpp
)
source_group("Source Files\\_Driver\\Input Parsing" FILES 
  ParseHRUFile.cpp
  ParseInput.cpp
  ParsePropertyFile.cpp
  ParseTimeSeriesFile.cpp
  ParseInitialConditionFile.cpp
  ParseLib.cpp
  ParseEnsembleFile.cpp
  ParseLiveFile.cpp
  ParseFEWSRunInfo.cpp
  NetCDFReading.cpp
  ParseGWFile.cpp
)
source_group("Source Files\\Hydrological Processes\\Lake/Glacier/Wetland Processes" FILES 
  Abstraction.cpp
  DepressionProcesses.cpp
  GlacierProcesses.cpp
  OpenWaterEvap.cpp
)
source_group("Source Files\\_Driver\\Output" FILES 
  CustomOutput.cpp
  StandardOutput.cpp
  Diagnostics.cpp
)
source_group("Source Files\\Parameters/Classes" FILES 
  GlobalParams.cpp
  LandUseClass.cpp
  SoilClass.cpp
  TerrainClass.cpp
  VegetationClass.cpp
  TransientParam.cpp
)
source_group("Source Files\\Transport Processes" FILES 
  Advection.cpp
  Decay.cpp
  LatAdvection.cpp
  Transformation.cpp
  Transport.cpp
  MassRouting.cpp
  ConstituentModel.cpp
  IsotopeTransport.cpp
  EnergyTransport.cpp
  MassLoading.cpp
)
source_group("Source Files\\Groundwater" FILES 
  GroundwaterModel.cpp
  GWRecharge.cpp
  GWRiverConnection.cpp
  GWSWProcessABC.cpp
  RiverReach.cpp
)
source_group("Source Files\\Hydrological Processes\\Energy Processes" FILES 
  HeatConduction.cpp
  SurfaceEnergyExchange.cpp
)
source_group("Source Files\\_Driver\\Ensemble Methods" FILES 
  ModelEnsemble.cpp
  DDS.cpp
)
source_group("Header Files" FILES 
  Properties.h
  RavenInclude.h
  StateVariables.h
  UnitTesting.h
  SparseMatrix.h
  PropertyClassABC.h
  StageDischargeRelations.h
)
source_group("Header Files\\Subbasins/HRUs" FILES 
  HydroUnits.h
  SubBasin.h
)
source_group("Header Files\\Hydrological Processes" FILES 
  HydroProcessABC.h
  Infiltration.h
  Precipitation.h
  SnowMovers.h
  SoilWaterMovers.h
  VegetationMovers.h
  GlacierProcesses.h
  Albedo.h
  CropGrowth.h
  OpenWaterEvap.h
  Convolution.h
  DepressionProcesses.h
  LateralExchangeABC.h
  PrairieSnow.h
  ProcessGroup.h
)
source_group("Header Files\\Forcing Functions\\Gauge/Time Series" FILES 
  Gauge.h
  TimeSeries.h
  TimeSeriesABC.h
  IrregularTimeSeries.h
)
source_group("Header Files\\Profiles/XSects/Reservoirs" FILES 
  ChannelXSect.h
  SoilProfile.h
  Reservoir.h
  ControlStructures.h
)
source_group("Header Files\\Input/Output" FILES 
  CustomOutput.h
  Diagnostics.h
  ParseLib.h
)
source_group("Header Files\\Model" FILES 
  Model.h
  ModelABC.h
  ModelEnsemble.h
)
source_group("Resource Files" FILES 
  resource.h
  Raven.rc
)
source_group("Header Files\\Forcing Functions" FILES 
  Radiation.h
  Forcings.h
  ForcingGrid.h
)
source_group("Header Files\\Parameters/Classes" FILES 
  TransientParam.h
  SoilAndLandClasses.h
  GlobalParams.h
)
source_group("Header Files\\Transport" FILES 
  Decay.h
  Advection.h
  LatAdvection.h
  EnergyTransport.h
  Transport.h
  IsotopeTransport.h
  MassLoading.h
)
source_group("Header Files\\Hydrological Processes\\Energy Processes" FILES 
  HeatConduction.h
  SurfaceEnergyExchange.h
)
source_group("Header Files\\Groundwater" FILES 
  MFUSGpp.h
  GWSWProcesses.h
  GroundwaterModel.h
  GWRiverConnection.h
  RiverReach.h
)
