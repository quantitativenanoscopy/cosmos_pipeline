classdef guiExperimentPoolingDarkROI < guiDarkROIsw
   properties

   end
   methods
        function obj = guiExperimentPoolingDarkROI(varargin)           
            obj = obj@guiDarkROIsw(varargin{1},[],[],[],[]);
            if nargin > 1 && iscell(varargin{2})
                obj.loadvars(varargin{2}{1},false);
                for i=2:length(varargin{2})
                    obj.addvars(varargin{2}{i},false);
                end
            elseif nargin > 1
                obj.loadvars(varargin{2},false);
                for i=3:length(varargin)
                    obj.addvars(varargin{i},false);
                end
            end
        end  
   end
end